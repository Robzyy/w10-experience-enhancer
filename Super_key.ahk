;Replace Start Menu with Powertoys Run
;while also maintaining Win+whatever fuctionality  
;Here, Powertoys Run shortcut is win+shift+x

#NoTrayIcon

#Include VirtualDesktop.ahk

$*lwin::
send {blind}{lwin downr}
return

$lwin up::
if (A_PriorKey = "Lwin")
{
send, {lwin down}{shift down}{x down}
sleep, 25
send,{lwin up}{shift up}{x up}
}
send {blind}{lwin up}
return