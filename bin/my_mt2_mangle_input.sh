#!/bin/sh

# only works using Xorg not Wayland
xinput create-master c1
xinput create-master c2

# need to attach the mouse and keyboard slave to the mt1 master:
xinput reattach "Logitech F710 - Mouse Emulation" "c1 pointer"
xinput reattach "Logitech F710 - Keyboard Emulation" "c1 keyboard"

# same for the other controller and other master:
xinput reattach "Logitech F310 - Mouse Emulation" "c2 pointer"
xinput reattach "Logitech F310 - Keyboard Emulation" "c2 keyboard"

# Note: I have another controller, an old-style no-stick gamepad.
# xboxdrv uses evdev to map it.  It won't work in daemon mode.
# IIRC, it didn't have a nice name like those above.
