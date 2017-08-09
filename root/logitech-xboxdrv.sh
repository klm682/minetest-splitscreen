#!/bin/sh

# run this at boot, as root user

xboxdrv --detach-kernel-driver --daemon \
   --match usbid=046d:c21d \
   --device-name "Logitech F310" \
   --config /root/logitech-minetest-1.xboxdrv \
   --next-controller \
   --match usbid=046d:c21f \
   --device-name "Logitech F710" \
   --config /root/logitech-minetest-2.xboxdrv

