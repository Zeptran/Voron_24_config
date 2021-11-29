#!/bin/sh
sudo systemctl stop klipper
cd ~/klipper

make clean KCONFIG_CONFIG=config.rpi
#make menuconfig KCONFIG_CONFIG=config.host
make KCONFIG_CONFIG=config.rpi
make flash KCONFIG_CONFIG=config.rpi

make clean KCONFIG_CONFIG=config.skr14
#make menuconfig KCONFIG_CONFIG=config.skr13
make KCONFIG_CONFIG=config.skr14
## Die richtige Flashmethode auswählen:
#make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_lpc1768_06FF0E0E19224D5339EB4C4E010000F5-if00
./scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_lpc1768_06FF0E0E19224D5339EB4C4E010000F5-if00 btt-skr-v1.4
./scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_lpc1768_05121818D8084D532C51094E020000F5-if00 btt-skr-v1.4

sudo systemctl start klipper
