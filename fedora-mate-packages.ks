%packages
-PackageKit*                # we switched to yumex, so we don't need this
firefox
@mate
compiz
compiz-plugins-main
compiz-plugins-extra
compiz-manager
compizconfig-python
compiz-plugins-unsupported
compiz-mate
libcompizconfig
compiz-plugins-main
ccsm
emerald-themes
emerald
fusion-icon
fusion-icon-gtk
@networkmanager-submodules
blueman

# some apps from mate-applications
caja-actions
mate-disk-usage-analyzer
mate-netspeed

# more backgrounds
f22-backgrounds-mate
f21-backgrounds-extras-base
f21-backgrounds-extras-mate

# system tools
system-config-printer
system-config-printer-applet

# audio video
parole
exaile
PackageKit-gstreamer-plugin

# blacklist applications which breaks mate-desktop
-audacious

# office
@libreoffice

# dsl tools
rp-pppoe

# FIXME; apparently the glibc maintainers dislike this, but it got put into the
# desktop image at some point.  We won't touch this one for now.
nss-mdns

%end
