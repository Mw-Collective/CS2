param(
    [string]$Root = ".",
    [switch]$AsMarkdown,
    [switch]$AsJson
)

if ($AsMarkdown -and $AsJson) {
    Write-Error "Use either -AsMarkdown or -AsJson, not both."
    exit 1
}

$resolvedRoot = Resolve-Path -Path $Root
$cfgFiles = Get-ChildItem -Path $resolvedRoot -Recurse -File -Filter *.cfg |
    Where-Object { $_.FullName -notmatch "\\.git(\\|$)" }

if (-not $cfgFiles) {
    Write-Error "No .cfg files found under $resolvedRoot"
    exit 1
}

$rows = foreach ($file in $cfgFiles) {
    $relative = $file.FullName.Substring($resolvedRoot.Path.Length).TrimStart('\', '/')

    foreach ($line in Get-Content -Path $file.FullName) {
        $trimmed = $line.Trim()
        if (-not $trimmed -or $trimmed.StartsWith("//")) {
            continue
        }

        $command = ($trimmed -split "\s+")[0]
        if ($command) {
            $value = ($trimmed -replace "^\S+\s*", "").Trim()
            [PSCustomObject]@{
                Command = $command
                File = $relative
                Value = $value
            }
        }
    }
}

$summary = $rows |
    Group-Object -Property Command |
    Sort-Object -Property Name |
    ForEach-Object {
        $files = ($_.Group.File | Sort-Object -Unique)
        $values = ($_.Group.Value | Where-Object { $_ -ne "" } | Sort-Object -Unique)
        [PSCustomObject]@{
            Command = $_.Name
            Files = ($files -join ", ")
            FileCount = $files.Count
            EntryCount = $_.Count
            Values = if ($values) { $values -join ", " } else { "(none)" }
        }
    }

if ($AsMarkdown) {
    "| Command | Files | File Count | Entry Count | Values |"
    "| --- | --- | --- | --- | --- |"
    foreach ($item in $summary) {
        "| ``{0}`` | {1} | {2} | {3} | {4} |" -f $item.Command, $item.Files, $item.FileCount, $item.EntryCount, $item.Values
    }
} elseif ($AsJson) {
    $summary | ConvertTo-Json -Depth 4
} else {
    $summary | Format-Table -AutoSize
}
