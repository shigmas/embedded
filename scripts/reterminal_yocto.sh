#!/bin/bash

# build-env will move us arround, so just start the script above the 'layers' directory
# only BUILD_DIR needs to be set (which it should be if it is run from docker

source layers/poky/oe-init-build-env $BUILD_DIR

bitbake-layers add-layer ../layers/meta-raspberrypi"
bitbake-layers add-layer ../layers/meta-seeed-cm4"
bitbake-layers add-layer ../layers/meta-qt5"
bitbake-layers add-layer ../layers/meta-openembedded/meta-oe"
bitbake-layers add-layer ../layers/meta-openembedded/meta-python"

MACHINE=seeed-reterminal bitbake rpi-test-image
