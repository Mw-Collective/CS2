param(
    [string]$Root = ".",
    [string[]]$Profiles = @("Potato", "Banana", "Sandwich")
)

function Get-CfgEntries {
    param([string]$Path)

    $entries = @()
    $lineNumber = 0
    foreach ($line in Get-Content -Path $Path) {
        $lineNumber++
        $trimmed = $line.Trim()
        if (-not $trimmed -or $trimmed.StartsWith("//")) {
            continue
        }

        $parts = $trimmed -split "\s+", 2
        $command = $parts[0]
        $value = if ($parts.Count -gt 1) { $parts[1].Trim() } else { "" }

        $entries += [PSCustomObject]@{
            Command = $command
            Value = $value
            LineNumber = $lineNumber
        }
    }

    return $entries
}

function Get-CommandValue {
    param(
        [object[]]$Entries,
        [string]$Command
    )

    $match = $Entries | Where-Object { $_.Command -eq $Command }
    if (-not $match) {
        return $null
    }

    return $match[0].Value
}

function Test-IntRange {
    param(
        [string]$Value,
        [int]$Min,
        [int]$Max
    )

    $parsed = 0
    if (-not [int]::TryParse($Value, [ref]$parsed)) {
        return $false
    }

    return ($parsed -ge $Min -and $parsed -le $Max)
}

$rootPath = Resolve-Path -Path $Root
$required = @(
    "fps_max",
    "fps_max_ui",
    "r_low_latency",
    "engine_low_latency_sleep_after_client_tick",
    "mm_dedicated_search_maxping",
    "rate",
    "cl_hud_telemetry_frametime_show",
    "cl_hud_telemetry_ping_show",
    "cl_hud_telemetry_net_misdelivery_show",
    "cl_showfps",
    "viewmodel_fov",
    "viewmodel_offset_x",
    "viewmodel_offset_y",
    "viewmodel_offset_z",
    "cl_autohelp",
    "host_writeconfig"
)

$results = @()
$hasErrors = $false

foreach ($profile in $Profiles) {
    $profilePath = Join-Path $rootPath $profile
    if (-not (Test-Path -LiteralPath $profilePath)) {
        $results += [PSCustomObject]@{
            Profile = $profile
            Status = "ERROR"
            Errors = "Profile folder missing"
            Warnings = ""
            CfgPath = ""
        }
        $hasErrors = $true
        continue
    }

    $cfgFile = Get-ChildItem -Path $profilePath -File -Filter *.cfg | Select-Object -First 1
    if (-not $cfgFile) {
        $results += [PSCustomObject]@{
            Profile = $profile
            Status = "ERROR"
            Errors = "No cfg file found"
            Warnings = ""
            CfgPath = ""
        }
        $hasErrors = $true
        continue
    }

    $entries = Get-CfgEntries -Path $cfgFile.FullName
    $errors = @()
    $warnings = @()

    foreach ($command in $required) {
        if (-not ($entries | Where-Object { $_.Command -eq $command })) {
            $errors += "Missing command: $command"
        }
    }

    $duplicates = $entries |
        Group-Object -Property Command |
        Where-Object { $_.Count -gt 1 } |
        Select-Object -ExpandProperty Name
    if ($duplicates) {
        $warnings += "Duplicate command(s): " + ($duplicates -join ", ")
    }

    $fpsMax = Get-CommandValue -Entries $entries -Command "fps_max"
    if ($fpsMax -ne $null -and -not (Test-IntRange -Value $fpsMax -Min 0 -Max 1000)) {
        $errors += "fps_max out of expected range (0-1000): $fpsMax"
    }

    $fpsMaxUi = Get-CommandValue -Entries $entries -Command "fps_max_ui"
    if ($fpsMaxUi -ne $null -and -not (Test-IntRange -Value $fpsMaxUi -Min 30 -Max 360)) {
        $errors += "fps_max_ui out of expected range (30-360): $fpsMaxUi"
    }

    $maxPing = Get-CommandValue -Entries $entries -Command "mm_dedicated_search_maxping"
    if ($maxPing -ne $null -and -not (Test-IntRange -Value $maxPing -Min 1 -Max 150)) {
        $errors += "mm_dedicated_search_maxping out of expected range (1-150): $maxPing"
    }

    $rate = Get-CommandValue -Entries $entries -Command "rate"
    if ($rate -ne $null -and -not (Test-IntRange -Value $rate -Min 128000 -Max 1000000)) {
        $errors += "rate out of expected range (128000-1000000): $rate"
    }

    $lowLatency = Get-CommandValue -Entries $entries -Command "r_low_latency"
    if ($lowLatency -ne $null -and $lowLatency -notin @("0", "1")) {
        $errors += "r_low_latency expected 0 or 1: $lowLatency"
    }

    $sleepAfterTick = Get-CommandValue -Entries $entries -Command "engine_low_latency_sleep_after_client_tick"
    if ($sleepAfterTick -ne $null -and $sleepAfterTick.ToLower() -notin @("true", "false")) {
        $errors += "engine_low_latency_sleep_after_client_tick expected true/false: $sleepAfterTick"
    }

    $telemetryCommands = @(
        "cl_hud_telemetry_frametime_show",
        "cl_hud_telemetry_ping_show",
        "cl_hud_telemetry_net_misdelivery_show"
    )
    foreach ($telemetryCommand in $telemetryCommands) {
        $telemetryValue = Get-CommandValue -Entries $entries -Command $telemetryCommand
        if ($telemetryValue -ne $null -and $telemetryValue -notin @("0", "1", "2")) {
            $errors += "$telemetryCommand expected 0, 1, or 2: $telemetryValue"
        }
    }

    $clShowfps = Get-CommandValue -Entries $entries -Command "cl_showfps"
    if ($clShowfps -ne $null -and $clShowfps -notin @("0", "1")) {
        $errors += "cl_showfps expected 0 or 1: $clShowfps"
    }

    $autoHelp = Get-CommandValue -Entries $entries -Command "cl_autohelp"
    if ($autoHelp -ne $null -and $autoHelp -notin @("0", "1")) {
        $errors += "cl_autohelp expected 0 or 1: $autoHelp"
    }

    $status = if ($errors.Count -gt 0) { "ERROR" } elseif ($warnings.Count -gt 0) { "WARN" } else { "OK" }
    if ($errors.Count -gt 0) {
        $hasErrors = $true
    }

    $relativeCfg = $cfgFile.FullName.Substring($rootPath.Path.Length).TrimStart('\', '/')
    $results += [PSCustomObject]@{
        Profile = $profile
        Status = $status
        Errors = ($errors -join "; ")
        Warnings = ($warnings -join "; ")
        CfgPath = $relativeCfg
    }
}

$results | Sort-Object Profile | Format-Table -AutoSize

if ($hasErrors) {
    exit 1
}

exit 0
