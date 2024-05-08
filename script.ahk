#Requires AutoHotkey v2.0
;▼ NUMLOCK AND CAPSOLOCK MOD: press=ON, hold=OFF
NumLock::
CapsLock::{
   if A_Thishotkey="CapsLock" {
      SetCapsLockState False
      tt:=["CapsLock OFF - Hold to enable","CapsLock ON"]
   }
   if A_Thishotkey="NumLock" {
      SetNumLockState True
      tt:=["NumLock ON - Hold to disable","NumLock OFF"]
   }

   ToolTip tt[1]
   SetTimer ()=>ToolTip(), -1200

   Sleep 200

   if GetKeyState(A_Thishotkey,"P") {
      if A_Thishotkey="CapsLock"
         SetCapsLockState True
      if A_Thishotkey="NumLock"
         SetNumLockState False

      ToolTip tt[2]
      SetTimer ()=>ToolTip(), -1200
   }

   KeyWait A_Thishotkey  ;(Prevents repeat)
}
