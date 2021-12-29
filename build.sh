
set -e

# config
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bcm2711_defconfig -j4

# build
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- Image modules dtbs -j4
