param(
    [string]$Root = ".",
    [string]$OutputPath = "CHECKLISTS/current-command-inventory.md",
    [string]$SnapshotDate = (Get-Date -Format "yyyy-MM-dd")
)

$inventoryLines = & "$PSScriptRoot/command_inventory.ps1" -Root $Root -AsMarkdown
$content = @()
$content += '# Current Command Inventory'
$content += ''
$content += "Generated on $SnapshotDate from repository ``.cfg`` files."
$content += ''
$content += $inventoryLines
$content += ''
$content += 'Regenerate with:'
$content += '`powershell -ExecutionPolicy Bypass -File TOOLS/update-command-inventory.ps1`'

Set-Content -Path $OutputPath -Value $content
Write-Output "Updated $OutputPath"
