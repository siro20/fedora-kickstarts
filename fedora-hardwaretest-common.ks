%packages

# Exclude unwanted groups that fedora-live-base.ks pulls in
-@dial-up
-@input-methods
-@standard
-@multimedia
-@printing
-anaconda
-@anaconda-tools
-@fonts
-@3d-printing
-@libreoffice
-@firefox
-@gnome-games
-@php
-@web-server
-@eclipse

# Make sure to sync any additions / removals done here with
# workstation-product-environment in comps
@base-x
@core
@gnome-desktop
@guest-desktop-agents
@hardware-support
@networkmanager-submodules


# Exclude unwanted packages
-brasero
-colord
-fedora-icon-theme
-gnome-icon-theme
-gnome-icon-theme-symbolic
-gfs2-utils
-reiserfs-utils
-plymouth*
-libreoffice*
-settroubleshoot
-fedora-logos
-firewalld
-gnome-photos
-gnome-maps
-gnome-weather
-gnome-clocks
-gnome-contacts
-gnome-documents
-gnome-todo
-gnome-video-effects
-gnome-calendar
-gnome-boxes
-gnome-font-viewer
-pipewire
-qemu*
-http*
-sane*
-cheese

# Packages for hardwaretest
coreboot-utils
fwts
stress
glmark2
#acpiaca-tools
python
python-devel
gcc
nasm
redhat-rpm-config
git


%end
