#!/bin/sh

# TODO: always on-top?
#zenity --progress --pulsate --timeout 6 --title "Splitscreen Minetest" --text "Please wait..." &

${HOME}/bin/my_mt2_reset_input.sh
${HOME}/bin/my_mt2_mangle_input.sh
nohup minetest &
nohup minetest &
${HOME}/bin/my_mt2_auto_ctrl_resize.sh &
sleep 360000000000000000000000
