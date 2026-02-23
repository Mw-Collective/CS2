# TOOLS

Local helper scripts for this repository.

## Scripts

- [command_inventory.ps1](command_inventory.ps1)
- [update-command-inventory.ps1](update-command-inventory.ps1)

## command_inventory.ps1

- Scans repository `.cfg` files.
- Extracts command tokens from non-comment lines.
- Outputs grouped command usage as a table.
- Supports markdown output with `-AsMarkdown`.

## update-command-inventory.ps1

- Generates `CHECKLISTS/current-command-inventory.md` in one step.
- Uses `command_inventory.ps1` internally.

## Examples

- Table view:
  - `powershell -ExecutionPolicy Bypass -File command_inventory.ps1`
- Markdown view:
  - `powershell -ExecutionPolicy Bypass -File command_inventory.ps1 -AsMarkdown`
- Update checklist snapshot:
  - `powershell -ExecutionPolicy Bypass -File update-command-inventory.ps1`
