; In game macros tied to counters in this hotkey below:
; attack
;#Showtooltip
;/startattack
;/castsequence reset=3 Saber Slash, Pistol Shot, Ghostly Strike, Ghostly Strike, Run Through

; cooldowns
; #Showtooltip
;/castsequence reset=20 Vanish, Cheap Shot, Slice and Dice

; finishers
;#Showtooltip
;/castsequence Slice and Dice

Process,priority,,High 
attack := 0
rush := 0
cooldowns := 0
finishers := 0

$Mbutton::

if auto_attack {
    auto_attack=0
    SetNumlockState, off
    return
}

auto_attack=1
    settimer, watcher, -100
    SetNumlockState, on
    return

watcher:

  rush = 164
  cooldowns = 108


Loop {

if attack = 166
{

  attack = 0
  finishers = 0
}

else if rush = 164

{

  send 4
    Sleep 200
  send 4
    Sleep 900

  finishers = 0
  rush = 0
  cooldowns += 1

}

else if cooldowns = 110

{

  send 2
    Sleep 200
  send 2
    Sleep 900
  send 2
    Sleep 200
  send 2
    Sleep 900
  send 2
    Sleep 200
  send 2
    Sleep 900
  send 5
    Sleep 200
  send 5
    Sleep 900

  cooldowns = 0
  finishers = 0
  attack += 4
  rush += 4
}


else if finishers = 24

{

  send 3
    Sleep 200
  send 3
    Sleep 900

  finishers = 0
  attack += 1
  cooldowns += 1
  rush += 1

}

else
    
  send 1
    Sleep 200
  send 1
    Sleep 900
  attack += 1
  finishers += 1
  cooldowns += 1
  rush += 1
}


  if auto_attack
    settimer, watcher, -100
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
