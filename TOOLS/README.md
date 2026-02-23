# Tools

Local helper scripts for this repository.

## Scripts

- [command_inventory.ps1](command_inventory.ps1)
- [update-command-inventory.ps1](update-command-inventory.ps1)
- [validate-profiles.ps1](validate-profiles.ps1)
- [build-profile-matrix.ps1](build-profile-matrix.ps1)
- [run-maintenance.ps1](run-maintenance.ps1)
- [check-markdown-links.ps1](check-markdown-links.ps1)

## command_inventory.ps1

- Scans repository `.cfg` files.
- Extracts command tokens from non-comment lines.
- Outputs grouped command usage as a table.
- Shows file coverage (`File Count`) and total occurrences (`Entry Count`).
- Shows value variants discovered for each command.
- Supports markdown output with `-AsMarkdown`.
- Supports JSON output with `-AsJson`.

## update-command-inventory.ps1

- Regenerates [Checklists/current-command-inventory.md](../Checklists/current-command-inventory.md) in one step.
- Uses `command_inventory.ps1` internally.

## validate-profiles.ps1

- Checks required commands across `Potato`, `Banana`, and `Sandwich`.
- Flags missing commands, invalid ranges, and invalid value formats.
- Returns non-zero exit code when validation fails.

## build-profile-matrix.ps1

- Builds [Checklists/profile-matrix.md](../Checklists/profile-matrix.md) from live cfg values.
- Keeps profile comparison docs synchronized with cfg files.

## run-maintenance.ps1

- Runs validation, command inventory refresh, profile matrix generation, and markdown link checks in sequence.
- Intended as the default one-command maintenance routine.

## check-markdown-links.ps1

- Scans repository markdown files for local relative links.
- Reports broken local links and returns non-zero exit code on failures.

## Examples

- Table view:
  - `powershell -ExecutionPolicy Bypass -File Tools/command_inventory.ps1`
- Markdown view:
  - `powershell -ExecutionPolicy Bypass -File Tools/command_inventory.ps1 -AsMarkdown`
- JSON view:
  - `powershell -ExecutionPolicy Bypass -File Tools/command_inventory.ps1 -AsJson`
- Refresh checklist snapshot:
  - `powershell -ExecutionPolicy Bypass -File Tools/update-command-inventory.ps1`
- Validate profiles:
  - `powershell -ExecutionPolicy Bypass -File Tools/validate-profiles.ps1`
- Build profile matrix:
  - `powershell -ExecutionPolicy Bypass -File Tools/build-profile-matrix.ps1`
- Run full maintenance:
  - `powershell -ExecutionPolicy Bypass -File Tools/run-maintenance.ps1`
- Validate local markdown links:
  - `powershell -ExecutionPolicy Bypass -File Tools/check-markdown-links.ps1`
