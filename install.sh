
set -e

# config
KERNEL=kernel8

# install modules to SD
sudo env PATH=$PATH make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- INSTALL_MOD_PATH=$SDPATH/rootfs modules_install

# cp to SD
sudo cp /$SDPATH/boot/$KERNEL.img $SDPATH/boot/$KERNEL-backup.img
sudo cp arch/arm64/boot/Image $SDPATH/boot/$KERNEL.img
sudo cp arch/arm64/boot/dts/broadcom/*.dtb $SDPATH/boot/
sudo cp arch/arm64/boot/dts/overlays/*.dtb* $SDPATH/boot/overlays/
sudo cp arch/arm64/boot/dts/overlays/README $SDPATH/boot/overlays/