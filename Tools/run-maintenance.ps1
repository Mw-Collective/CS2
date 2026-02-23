param(
    [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"
$rootPath = Resolve-Path -Path $Root
Write-Output "Running maintenance for $rootPath"

$validateScript = Join-Path $PSScriptRoot "validate-profiles.ps1"
$inventoryScript = Join-Path $PSScriptRoot "update-command-inventory.ps1"
$matrixScript = Join-Path $PSScriptRoot "build-profile-matrix.ps1"
$linksScript = Join-Path $PSScriptRoot "check-markdown-links.ps1"

try {
    $global:LASTEXITCODE = 0
    & $validateScript -Root $rootPath
    if ($global:LASTEXITCODE -ne 0) {
        throw "Profile validation failed."
    }

    $global:LASTEXITCODE = 0
    & $inventoryScript -Root $rootPath -OutputPath (Join-Path $rootPath "Checklists/current-command-inventory.md")
    if ($global:LASTEXITCODE -ne 0) {
        throw "Command inventory update failed."
    }

    $global:LASTEXITCODE = 0
    & $matrixScript -Root $rootPath -OutputPath (Join-Path $rootPath "Checklists/profile-matrix.md")
    if ($global:LASTEXITCODE -ne 0) {
        throw "Profile matrix build failed."
    }

    $global:LASTEXITCODE = 0
    & $linksScript -Root $rootPath
    if ($global:LASTEXITCODE -ne 0) {
        throw "Markdown link validation failed."
    }

    Write-Output "Maintenance complete."
    exit 0
}
catch {
    Write-Error $_
    exit 1
}
