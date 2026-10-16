# FirstPersonShooterKit (reference baseline)

Vanilla Fab/Epic **First Person Shooter Kit** snapshot from `C:\Snack Ops\LatestUpdates\FirstPersonShooterKit` for diffing against [Snack-Ops](https://github.com/gamedev44/Snack-Ops).

**Compare locally (FPSK content only):**

```powershell
git -C "C:\Snack Ops\5.8\Call-of-Dutie-Snack-Ops" diff --no-index `
  "C:\Snack Ops\LatestUpdates\FirstPersonShooterKit\Content\FPSK" `
  "C:\Snack Ops\5.8\Call-of-Dutie-Snack-Ops\Content\FPSK"
```

Snack-Ops keeps custom `FirstPersonCharacter`, `BP_MainMenu`, and `TheEmptyLot`; everything else should match this baseline after vault sync.
