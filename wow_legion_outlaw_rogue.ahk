; In game macros tied to counters in this hotkey below: 27k DPS (16 million damage sample) with 651 Gear Score on three target dummies 

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

; watcher loop named auto_attack that turns the Numlock key on your keyboard on to indicate it's status

auto_attack=1
    settimer, watcher, -100
    SetNumlockState, on
    return

watcher:

  rush = 164
  cooldowns = 108
  
; start of the combat sequence loop
Loop {

; define the reset of the `attack & finishers` counters
if attack = 166
{

  attack = 0
  finishers = 0
}

; define the adrenaline rush counter and trigger the ability
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

; define the cooldowns counter and trigger the abilities
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

; define the finishers counter and trigger the ability
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

; main attack sequence 
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

; reset the state of the auto_attack numlock status loop
  if auto_attack
    settimer, watcher, -100
return

; kill the auto_attack macro
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
