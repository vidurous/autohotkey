#NoEnv
#MaxThreadsPerHotkey 4
Process,priority,,High 
#IfWinActive
fuel := 1
down := 1
forward := 1

$Mbutton::
if auto_attack
{
    auto_attack=0
    SetNumlockState, off
    return
}
auto_attack=1
    settimer, f_Loop, -100
    SetNumlockState, on
    return
f_Loop:
  send 1
    Sleep 600

Loop 100 {

if fuel = 5200
{
  send 7
   Sleep 1000
  send {click right}
    Sleep 2000
  send 8
   Sleep 1000
  send {click right}
    Sleep 2000
  send 8
   Sleep 1000
  send {click right}
    Sleep 1000
   fuel = 0

  send `t
    Sleep 1000
  MouseMove, 675,1025
    Sleep 1000
  send {click down}
    Sleep 200
  send {click up}
    Sleep 1000
  MouseMove, 950,351
    Sleep 1000
  send {click down}
    Sleep 200
  send {click up}
    Sleep 1000
  send {Esc}
    Sleep 1000
  send 1
    Sleep 500
  send {e down}
    Sleep 1500
  send {e up}
    Sleep 500
}

else if down > 325
{
  down = 1
  send {c up}
  send {click},{click}
    Sleep 300
  fuel += 1
  forward += 1
}

else if down > 175

{
  send {c down}
  send {click},{click}
    Sleep 300
  down += 1
  fuel += 1
  forward += 1
}

else if down = 50
{
  send {d down}
   Sleep 300
  send {d up}
  send {click},{click}
    Sleep 300
  down += 1
  fuel += 1
  forward += 1
}

else if down = 100
{
  send {a down}
   Sleep 300
  send {a up}
  send {click},{click}
    Sleep 300
  down += 1
  fuel += 1
  forward += 1
}

else if down = 150
{
  send {a down}
   Sleep 300
  send {a up}
  send {click},{click}
    Sleep 300
  down += 1
  fuel += 1
  forward += 1
}

else if down = 210
{
  send {d down}
   Sleep 300
  send {d up}
  send {click},{click}
    Sleep 300
  down += 1
  fuel += 1
  forward += 1
}

else if down = 260
{
  send {d down}
   Sleep 300
  send {d up}
  send {click},{click}
    Sleep 300
  down += 1
  fuel += 1
  forward += 1
}


else if forward >= 350
{
  forward = 1
  send {w down}
    Sleep 300
  send {w up}
    Sleep 300
  down += 1
  fuel += 1
}

else

  send {click},{click}
    Sleep 300
  fuel += 1
  down += 1
  forward += 1
}

  send `t
    Sleep 1000
  MouseMove, 675,1025
    Sleep 1000
  send {click down}
    Sleep 200
  send {click up}
    Sleep 1000
  MouseMove, 950,351
    Sleep 1000
  send {click down}
    Sleep 200
  send {click up}
    Sleep 1000
  send {Esc}
    Sleep 1000
  send {e down}
    Sleep 1500
  send {e up}
    Sleep 500

  if auto_attack
    settimer, f_Loop, -100
return

$Xbutton1::
if kill_check
{
    kill_check=0
    SetNumlockState, off
    SetScrollLockState, off
    SetCapsLockState, off
    return
}
;Make the parsing loop no
Critical

kill_everything=1
  settimer, loop_kill, -100
  Reload
  SetNumlockState, off
  SetScrollLockState, off
  SetCapsLockState, off

loop_kill:
  if kill_everything
    settimer, loop_kill, -100
return
