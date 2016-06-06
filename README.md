# Debian Packer template
Template to build a VirtualBox/Vagrant box based on [Debian](https://www.debian.org/) Jessie 8.5.

## Prerequisites
- Packer: https://www.packer.io/
- Vagrant: https://www.vagrantup.com/
- Virtualbox: https://www.virtualbox.org/

## Settings
Hostname, CPU, and so forth can be changed in the `debian.json` file.

## Usage
1. Clone this repository and go into it.
  - ```git clone https://github.com/damien-cremilleux/PackerDebian.git```
  - ```cd PackerDebian```
2. Run Packer to build the VM.
  - ```packer build debian.json```

The box should have been created under the name ```packer_virtualbox-iso_virtualbox.box```.

## Running the box with Vagrant
1. Add the box.
  - ```vagrant box add VEGAS packer_virtualbox-iso_virtualbox.box```
2. Create the Vagrantfile.
  - ```vagrant init VEGAS```
3. Start the box and enjoy :)
  - ```vagrant up```
