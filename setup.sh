#!/bin/sh

echo Adding Apt-Fast Repositories
wait 3

echo deb [signed-by=/etc/apt/keyrings/apt-fast.gpg] http://ppa.launchpad.net/apt-fast/stable/ubuntu jammy main >> /etc/apt/sources.list.d/apt-fast.list
mkdir -p /etc/apt/keyrings
curl -fsSL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0xA2166B8DE8BDC3367D1901C11EE2FF37CA8DA16B" | gpg --dearmor -o /etc/apt/keyrings/apt-fast.gpg
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y apt-fast


echo Updating system with Apt-Fast 
wait 3
apt-fast update
apt-fast -y upgrade 
apt-fast install xfce4 xfce4-goodies gparted nautilus dbus-x11 tightvncserver btrfs-progs f2fs-tools dosfstools hfsprogs hfsutils util-linux jfsutils nilfs-tools reiserfsprogs udftools xfsprogs xfsdump zfs-dkms zfsutils-linux gvfs-backends smbclient synaptic gdebi gvfs gvfs-fuse samba bridge-utils chromium-browser firefox-esr nfs-kernel-server avahi-daemon mtools exfatprogs reiser4progs cockpit qemu-kvm virt-manager libvirt-daemon-system virtinst libvirt-clients openssh-server zfs-auto-snapshot zfs-initramfs ffmpeg vlc wsdd libavcodec-extra


#  install openssh-server zfs-dkms zfs-auto-snapshot zfs-initramfs ubuntu-restricted-extras ffmpeg vlc wsdd
