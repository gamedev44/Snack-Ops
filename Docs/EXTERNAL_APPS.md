# External apps (not in this repo)

These live as **sibling folders** next to this SDK under `C:\Snack Ops\Snack Ops 2\`.

| App | Absolute path | Start |
|-----|----------------|-------|
| Snack Ops Launcher | `C:\Snack Ops\Snack Ops 2\SnackOps-Launcher\` | `npm start` |
| UE 5.8 Toolchain Launcher | `C:\Snack Ops\Snack Ops 2\UE58-Toolchain-Launcher\` | `npm start` |

Snack Ops Launcher config (`SnackOps-Launcher\snackops-config.json`) points here via `sdkRevisionRoot`: `../SnackOps_2_SDK_Revision`.

Mod installer (Python + manifest): `SnackOps-Launcher\mod-installer\`.

### Misc review archive (inside SDK — keep)

| What | Path |
|------|------|
| Development recovery archive | `SnackOps_2_SDK_Revision\_misc_review\` |

Past dev snapshots (crashes, emergency saves, pre-promote recovery). **Git history on steroids** — reviewed and kept on purpose. Open via desktop **SnackOps Workspace → Misc Review** or workspace root `_misc_review\`. Details: `_misc_review\README.md`.

## Cursor workspace

Identical **`SnackOps_2_SDK_Revision.code-workspace`** in each place (shared Cursor history):

- `SnackOps_2_SDK_Revision\` (SDK)
- `SnackOps-Launcher\`
- `UE58-Toolchain-Launcher\`
- `SnackOps_2_SDK_Revision\_misc_review\` (misc stays **inside** the SDK, not a sibling folder)
