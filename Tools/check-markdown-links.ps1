param(
    [string]$Root = "."
)

$rootPath = Resolve-Path -Path $Root
$mdFiles = Get-ChildItem -Path $rootPath -Recurse -File -Filter *.md |
    Where-Object { $_.FullName -notmatch "\\.git(\\|$)" }

if (-not $mdFiles) {
    Write-Error "No markdown files found under $rootPath"
    exit 1
}

$linkPattern = "\[[^\]]+\]\(([^)]+)\)"
$issues = @()

foreach ($file in $mdFiles) {
    $content = Get-Content -Raw -Path $file.FullName
    $matches = [regex]::Matches($content, $linkPattern)

    foreach ($match in $matches) {
        $target = $match.Groups[1].Value.Trim()

        if (-not $target) { continue }
        if ($target -match "^(https?://|mailto:|#)") { continue }

        $cleanTarget = $target.Split('#')[0].Split('?')[0]
        if (-not $cleanTarget) { continue }

        $decodedTarget = [System.Uri]::UnescapeDataString($cleanTarget)
        $resolved = Join-Path $file.DirectoryName $decodedTarget

        if (-not (Test-Path -LiteralPath $resolved)) {
            $relativeFile = $file.FullName.Substring($rootPath.Path.Length).TrimStart('\\', '/')
            $issues += [PSCustomObject]@{
                File = $relativeFile
                Link = $target
                ResolvedPath = $resolved
            }
        }
    }
}

if ($issues.Count -gt 0) {
    Write-Output "Broken local markdown links detected:"
    $issues | Sort-Object File, Link | Format-Table -AutoSize
    exit 1
}

Write-Output "All local markdown links resolved successfully."
exit 0
