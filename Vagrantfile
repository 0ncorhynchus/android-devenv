# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # Ubuntu 16.04LTS (Xenial Xerus) 64-bit
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "AndroidStudio"
  config.ssh.forward_x11 = true

  config.vbguest.auto_update = true

  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true
    vb.memory = 2048
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--paravirtprovider", "kvm"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--usb", "on"]
    vb.customize ["usbfilter", "add", "0", "--target", :id, "--name", "LG", "--vendorid", "0x00d1"]
  end

  config.vm.provision :shell, :path => "provision.sh"

  config.vm.synced_folder "projects/", "/home/ubuntu/AndroidStudioProjects"
end
