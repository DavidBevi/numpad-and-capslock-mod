CapsLock::{  ;press=OFF,  hold=ON
   SetCapsLockState False
   Settimer ()=>SetCapsLockState(GetKeyState(A_Thishotkey,"P")? True: False), -200
   KeyWait A_Thishotkey
}
NumLock::{  ;press=ON,  hold=OFF
   SetNumLockState True
   Settimer ()=>SetNumLockState(GetKeyState(A_Thishotkey,"P")? False: True), -200
   KeyWait A_Thishotkey
}