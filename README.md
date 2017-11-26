# fedora-kickstarts #

This project is used to manage the Fedora kickstart files used in composing Fedora release images. 

The master branch is used by rawhide and each release branch is used by that release. 

All changes should be made via the PR workflow. 

This project is packaged in Fedora as the spin-kickstarts package allowing users to see 
and modify the kickstart files for their local needs. 

## Custom repo for fedora spin 'hardwaretest'

Hardware testing repo based on fedora gnome spin.

Additional tools:
* coreboot-utils
* fwts
* stress
* glmark2
* python
* python-devel
* gcc
* nasm
* redhat-rpm-config
* git

Removed packages:
* firewalld
* firefox
* libreoffice
* gnome-*
* @eclipse
* @php
* @web-server
* @fonts
* anaconda
* @printing
* @multimedia
* brasero
* plymouth*
* fedora-logos
* qemu*
* sane*
* cheese
* pipewire

### Build
    livemedia-creator --ks fedora-live-hardwaretest.ks --no-virt --resultdir /var/lmc --project Fedora-HardwareTest-Live --make-iso --volid Fedora-HardwareTest-Live --iso-only --iso-name Fedora-HardwareTest-Live.iso --releasever 27 --title Fedora-HardwareTest-Live --macboot --lorax-templates ./share/

## To make a release ##

    git clone ssh://git@pagure.io/fedora-kickstarts.git fedora-kickstarts
    cd fedora-kickstarts
    # If you need a specific branch other than master:
    git checkout BRANCHNAME
    # No tag has been added yet tag HEAD with
    git tag VERSION
    git push --tags
    make
    # Publish the released tar ball
    make publish
    # Clean up the generated files:
    make clean

# bug reports #

Bugs should be reported to the spin-kickstarts bugzilla component:

https://bugzilla.redhat.com/enter_bug.cgi?product=Fedora&component=spin-kickstarts
