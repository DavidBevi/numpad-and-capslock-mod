#Requires AutoHotkey v2.0
;▼ NUMLOCK AND CAPSOLOCK MOD: press=ON, hold=OFF
NumLock::
CapsLock::{
   if A_Thishotkey="CapsLock"
      SetCapsLockState False
   if A_Thishotkey="NumLock"
      SetNumLockState True

   ToolTip (A_Thishotkey " ON - Hold to disable")
   SetTimer ()=>ToolTip(), -1200

   Sleep 200

   if GetKeyState(A_Thishotkey,"P") {
      if A_Thishotkey="CapsLock"
         SetCapsLockState True
      if A_Thishotkey="NumLock"
         SetNumLockState False

      ToolTip (A_Thishotkey " OFF")
      SetTimer ()=>ToolTip(), -1200
   }

   KeyWait A_Thishotkey  ;(Prevents repeat)
}
