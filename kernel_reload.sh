cd /usr/src/linux

make -j2 bzImage

sudo cp /usr/src/linux/arch/x86/boot/bzImage /boot/vmlinuz-3.18.3+

make modules

sudo make modules_install

sudo update-initramfs -k 3.18.3+ -u

sudo reboot
