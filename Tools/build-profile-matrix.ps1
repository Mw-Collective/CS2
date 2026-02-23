param(
    [string]$Root = ".",
    [string[]]$Profiles = @("Potato", "Banana", "Sandwich"),
    [string]$OutputPath = "Checklists/profile-matrix.md",
    [string]$SnapshotDate = (Get-Date -Format "yyyy-MM-dd")
)

function Get-CfgMap {
    param([string]$CfgPath)

    $map = @{}
    foreach ($line in Get-Content -Path $CfgPath) {
        $trimmed = $line.Trim()
        if (-not $trimmed -or $trimmed.StartsWith("//")) {
            continue
        }

        $parts = $trimmed -split "\s+", 2
        $command = $parts[0]
        $value = if ($parts.Count -gt 1) { $parts[1].Trim() } else { "" }

        if (-not $map.ContainsKey($command)) {
            $map[$command] = $value
        }
    }

    return $map
}

$rootPath = Resolve-Path -Path $Root
$codeTick = [char]96
$keyCommands = @(
    "fps_max",
    "fps_max_ui",
    "mm_dedicated_search_maxping",
    "rate",
    "cl_hud_telemetry_frametime_show",
    "cl_hud_telemetry_ping_show",
    "cl_hud_telemetry_net_misdelivery_show",
    "r_low_latency",
    "engine_low_latency_sleep_after_client_tick",
    "cl_showfps",
    "viewmodel_fov",
    "viewmodel_offset_x",
    "viewmodel_offset_y",
    "viewmodel_offset_z"
)

$profileData = @{}
foreach ($profile in $Profiles) {
    $cfgFile = Get-ChildItem -Path (Join-Path $rootPath $profile) -File -Filter *.cfg | Select-Object -First 1
    if (-not $cfgFile) {
        throw "No cfg file found for profile: $profile"
    }

    $profileData[$profile] = @{
        CfgName = $cfgFile.Name
        Map = Get-CfgMap -CfgPath $cfgFile.FullName
    }
}

$lines = @()
$lines += "# Profile Matrix"
$lines += ""
$lines += "Generated on $SnapshotDate from profile cfg files."
$lines += ""
$lines += "| Setting | " + (($Profiles -join " | ")) + " |"
$lines += "| --- | " + (($Profiles | ForEach-Object { "---" }) -join " | ") + " |"

foreach ($command in $keyCommands) {
    $row = @("$codeTick$command$codeTick")
    foreach ($profile in $Profiles) {
        $value = $profileData[$profile].Map[$command]
        if (-not $value) {
            $value = "(missing)"
        }
        $row += "$codeTick$value$codeTick"
    }
    $lines += "| " + ($row -join " | ") + " |"
}

$lines += ""
$lines += "## Launch Options"
$lines += ""
foreach ($profile in $Profiles) {
    $cfgName = $profileData[$profile].CfgName
    $launch = "-novid -console -fullscreen +exec $cfgName"
    $lines += "- {0}: {1}{2}{1}" -f $profile, $codeTick, $launch
}

$lines += ""
$lines += "Regenerate with:"
$lines += "{0}powershell -ExecutionPolicy Bypass -File Tools/build-profile-matrix.ps1{0}" -f $codeTick

Set-Content -Path $OutputPath -Value $lines
Write-Output "Updated $OutputPath"

exit 0
