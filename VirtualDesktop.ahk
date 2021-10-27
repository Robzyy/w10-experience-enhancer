; Make the win key even more useful by
; navigating virtual desktops with it!

; ### ------------------------------- Go to virtual desktop n ----- ###
#1::
#2::
#3::
#4::
#5::
#6::
#7::
#8::
#9::
    Number := SubStr(A_ThisHotKey, 2, 1)                    ; Get the number this hotkey has been called with
    Number := Number - 1                                    ; Desktops are 0-indexed
    Run, VirtualDesktop.exe -Switch:%Number%,,Hide
return

; ### ----------------- Move active window to virtual desktop n --- ###
#+1::
#+2::
#+3::
#+4::
#+5::
#+6::
#+7::
#+8::
#+9::
    Number := SubStr(A_ThisHotKey, 3, 1)                    ; Get the number this hotkey has been called with
    Number := Number - 1                                    ; Desktops are 0-indexed
    WinGet, winid, PID, A                                   ; Get PID of active window
    Run, VirtualDesktop.exe -GetDesktop:%Number% -MoveWindow:%winid%,,Hide
return

;
#q::
    WinGet, winid, PID, A                                   ; Get PID of active window
    Run, VirtualDesktop.exe -PinApplication:%winid%