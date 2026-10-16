================================================================================
                    SNACK OPS SDK LAUNCHER - README
================================================================================

REQUIRED FILES:
  - SnackOps_Launcher.bat     -> Main menu launcher (double-click to run)
  - SnackOps_Banner.txt       -> ASCII banner displayed by launcher

CONFIGURED PATHS:

  Project:
    C:\Snack Ops\Call-of-Dutie-Snack-Ops\SnackOps_SDK.uproject

  Unreal Editor:
    C:\Program Files\Epic Games\UE_5.3\Engine\Binaries\Win64\UnrealEditor.exe

HOW TO USE:

  1. Ensure both SnackOps_Launcher.bat and SnackOps_Banner.txt are in the 
     same folder

  2. Double-click SnackOps_Launcher.bat

  3. Select from the menu:

     [1] Normal Unreal Editor launch
     [2] Editor with live logging (-log flag)
     [3] Open project folder in Explorer
     [4] Open .uproject file directly
     [5] Clean all generated folders (Intermediate, Saved, DDC)
     [6] Clean Derived Data Cache only
     [7] Verify all paths are correct
     [0] Exit

FEATURES:

  ✓ One-click Unreal Editor launch
  ✓ Live logging mode for debugging
  ✓ Quick access to project and content folders
  ✓ Safe cache cleaning (with confirmation)
  ✓ Path verification utility
  ✓ Console with proper formatting and ASCII banner

NOTES:

  - The launcher reads the banner file from the same directory (do not move)
  - Paths can be customized by editing the .bat file (lines 8-11)
  - First editor launch after cleaning may take longer while Unreal rebuilds
  - All your Content, Config, and Source folders are preserved during cleanup

TROUBLESHOOTING:

  If banner doesn't display:
    → Check that SnackOps_Banner.txt is in the SAME FOLDER as the .bat file
    → Banner file should not be renamed

  If launcher won't open project:
    → Verify paths in the .bat file match your system
    → Use option [7] to check if all paths are valid
    → Make sure Unreal Engine 5.3 is installed at the configured path

================================================================================
