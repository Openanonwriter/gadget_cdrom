#! /bin/bash -eu

if lsmod |grep -q g_mass_storage; then
    rmmod g_mass_storage
fi

if mountpoint -q /iso; then
    umount "$(losetup -PLf /iso.img --show)p1"
fi
