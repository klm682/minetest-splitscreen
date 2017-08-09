Minetest Split Screen Howto
===========================

Want to run multiplayer split-screen Minetest on a single computer?

This repo shares our scripts for doing that as well as our controller setups.

![Screenshot 1](/screenshot.png)

Our Setup
---------

  * A computer running Linux (we use Fedora).
  * ... connected to television or other large screen.
  * A standard keyboard/mouse setup (we use a Thinkpad bluetooth keyboard).
  * A Logitech F310 wired game controller.
  * A Logitech F710 wireless game controller.

(Other controllers should work too)


Brief Howto
-----------

1.  Ensure controllers are in "X" mode (physical switch on the back).
2.  Configure your controllers using xboxdrv (we do this at boot).
3.  Log into IceWM desktop (Gnome, even on Xorg rather than Wayland does not work)
4.  Run our `mt2.sh` script.  It does the following:
      * Launch two instances of minetest.
      * Use "xinput" to configure a mouse/keyboard combo for each controller.
      * Map each of the virual mouse/keyboards to one of the minetest windows.
      * Resize the two windows side-by-side.
5.  Use the regular keyboard/mouse to change usernames, select server, connect, etc.


Howto install
-------------

#### Fedora: install the following packages:

`dnf install minetest xdotool icewm xboxdrv`

#### Ubuntu: TODO, please help.

#### Install our scripts:

  * Copy the files in `bin/` to somewhere you can execute them such as `${HOME}/bin/`.

  * Copy the files in `root/` somewhere such as `/root`

