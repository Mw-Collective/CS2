param(
    [string]$Root = ".",
    [switch]$AsMarkdown
)

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
            [PSCustomObject]@{
                Command = $command
                File = $relative
            }
        }
    }
}

$summary = $rows |
    Group-Object -Property Command |
    Sort-Object -Property Name |
    ForEach-Object {
        [PSCustomObject]@{
            Command = $_.Name
            Files = (($_.Group.File | Sort-Object -Unique) -join ", ")
            Count = $_.Count
        }
    }

if ($AsMarkdown) {
    "| Command | Files | Count |"
    "| --- | --- | --- |"
    foreach ($item in $summary) {
        "| ``{0}`` | {1} | {2} |" -f $item.Command, $item.Files, $item.Count
    }
} else {
    $summary | Format-Table -AutoSize
}
