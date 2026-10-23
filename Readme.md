Simple Configuration to build a minimal image for Rasberry Pi 4 to run pipedal

This a for fun project to learn yocto  
    - Build an image with yocto  
    - Enable RT kernel  
    - Wrap a non-trivial application  

To build:  
source ./setup.sh  
bitbake rpi4-image-minimal  

To Deploy  
cp -L tmp/deploy/images/raspberrypi4-64/rpi4-image-minimal-raspberrypi4-64.rootfs.wic.bz2 /mnt/c/...  
Flash SD card with Pi Imager  
I was using WSL2 on a windows machine which was not correclty passing through the USB device to write natively from Linux  
