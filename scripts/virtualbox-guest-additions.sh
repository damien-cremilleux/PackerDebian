#!/bin/bash

# Install additional guests
yes | m-a prepare
mkdir /tmp/vbox
mount -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/vbox
yes | sh /tmp/vbox/VBoxLinuxAdditions.run
umount /tmp/vbox
rmdir /tmp/vbox
rm /home/vagrant/*.iso
