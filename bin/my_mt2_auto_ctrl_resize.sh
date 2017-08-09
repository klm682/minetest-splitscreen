#!/bin/sh

# wait for the clients to start
sleep 2

# Now we bind the c1 controller to a particular window.
# get the window id (run and then click on it)
#echo "**** Select the window for controller 1 ****"
#xmessage -nearmouse "Select the window for controller 1" -timeout 2
#win1=`xdotool selectwindow`
#echo "**** Select the window for controller 2 ****"
#xmessage -nearmouse "Select the window for controller 2" -timeout 2
#win2=`xdotool selectwindow`

tmp=`xdotool search --name "Minetest*"`
tmparray=($tmp)
# get length of an array
Len=${#tmparray[@]}
echo "length is $Len (should be 2, TODO: assert)"
win1=${tmparray[0]}
win2=${tmparray[1]}
echo "Windows 1 and 2 are: $win1, $win2"


# use this number and the c1 mouse master
# (keyboard will happen automatically---I think)
xinput set-cp $win1 "c1 pointer"
xinput set-cp $win2 "c2 pointer"

# resize  and move to split screen
#xdotool windowsize $win1 50% 100%
#xdotool windowsize $win2 50% 100%
#xdotool windowmove $win1 0 0
#xdotool windowmove $win2 680 0
# (note 680 here is half the resolution of my 1360x768 display)

# or use hardcoded pixel values, depending on window manager, panels etc
xdotool windowmove $win1 -2 -20
xdotool windowmove $win2 680 -20
xdotool windowsize $win1 677 737
xdotool windowsize $win2 677 737
