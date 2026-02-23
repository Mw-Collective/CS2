# Checklists

Operational checklists for maintaining this repository.

## Pages

- [Post-update audit](post-update-audit.md)
- [Current command inventory](current-command-inventory.md)
- [Profile matrix](profile-matrix.md)
- [Benchmark session template](benchmark-session-template.md)

## Usage

- Run full maintenance: `powershell -ExecutionPolicy Bypass -File ../Tools/run-maintenance.ps1`
- Validate profiles only: `powershell -ExecutionPolicy Bypass -File ../Tools/validate-profiles.ps1`
- Refresh inventory only: `powershell -ExecutionPolicy Bypass -File ../Tools/update-command-inventory.ps1`
- Rebuild matrix only: `powershell -ExecutionPolicy Bypass -File ../Tools/build-profile-matrix.ps1`
- Check local markdown links: `powershell -ExecutionPolicy Bypass -File ../Tools/check-markdown-links.ps1`
- Use [post-update-audit.md](post-update-audit.md) after major Counter-Strike updates.
