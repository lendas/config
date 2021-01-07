mkfs.fat -F32 /dev/sda1
mkfs.f2fs /dev/sda2

mount /dev/sda2 /mnt
mkdir /mnt/efi
mount /dev/sda1 /mnt/efi

cat << EOF > /etc/pacman.d/mirrorlist
Server = http://www.caco.ic.unicamp.br/archlinux/\$repo/os/\$arch
Server = http://linorg.usp.br/archlinux/\$repo/os/\$arch
Server = http://archlinux.c3sl.ufpr.br/\$repo/os/\$arch
Server = http://br.mirror.archlinux-br.org/\$repo/os/\$arch
Server = http://mirror.ufam.edu.br/archlinux/\$repo/os/\$arch
Server = https://www.caco.ic.unicamp.br/archlinux/\$repo/os/\$arch
Server = http://mirror.ufscar.br/archlinux/\$repo/os/\$arch
EOF

pacstrap /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

echo "pt_BR.UTF-8 UTF-8" > /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=pt_BR.UTF-8" > /etc/locale.conf
echo "KEYMAP=br-abnt2" > /etc/vconsole.conf
locale-gen

echo "note" > /etc/hostname

echo "127.0.0.1 localhost note" > /etc/hosts

echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

pacman -S xorg-server xorg-xrandr \
    ntfs-3g openssh sddm \
    nm-applet networkmanager powerdevil  \
    pulseaudio-bluetooth sudo docker \
    htop amd-ucode neovim grub efibootmgr git \
    subversion mesa base-devel nvidia nvidia-utils nvidia-settings npm yq jq i3 picom alacritty chromium dmenu dolphin feh gwenview okular

useradd -m -G wheel,docker luiz

grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=i3arch

grub-mkconfig -o /boot/grub/grub.cfg

passwd

passwd luiz


su luiz
    whoami

    cd /home/luiz

    git clone https://aur.archlinux.org/yay.git
    #git clone https://aur.archlinux.org/optimus-manager.git
    #git clone https://aur.archlinux.org/optimus-manager-qt.git

    cd yay
        makepkg --syncdeps -i
    cd ..
    
    #cd optimus-manager
    #    makepkg --syncdeps -i
    #cd ..
    
    #cd optimus-manager-qt
    #    makepkg --syncdeps -i
    #cd ..
exit

systemctl enable sshd
systemctl enable bluetooth
systemctl enable sddm
systemctl enable docker
systemctl enable NetworkManager
systemctl enable optimus-manager
