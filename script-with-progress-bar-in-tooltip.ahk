;▼ NUMLOCK AND CAPSOLOCK MOD - WITH PROGRESS BAR IN TOOLTIP
CapsLock::      ;press=OFF, hold=ON
NumLock::{      ;press=ON,  hold=OFF
   w:= A_Thishotkey="NumLock"? 1 : 0
   w? SetNumLockState(True) : SetCapsLockState(False)
   Loop(20) {
      str:= w? "NumLock ON - Hold to disable" : "CapsLock OFF - Hold to enable"
      str.="`n[" Format("{:" 2*A_Index "}",">") Format("{:" 2*(20-A_Index) "}","") "]"
      tt(str)
      Sleep(30)
      If !GetKeyState(A_Thishotkey,"P") {
         w? tt("NumLock ON") : tt("CapsLock OFF")
         Break
      }
   }
   If GetKeyState(A_Thishotkey,"P") {
      w? SetNumLockState(False) : SetCapsLockState(True)
      tt(w? "NumLock OFF" : "CapsLock ON")
   }
   KeyWait A_Thishotkey  ;(Prevents repeat)
}
