apt-get install -y software-properties-common python-software-properties
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
add-apt-repository ppa:webupd8team/java -y
add-apt-repository -y ppa:paolorotolo/android-studio
apt-get update -y
apt-get install -y oracle-java8-installer
echo "Setting environment variables for Java 8.."
apt-get install -y oracle-java8-set-default
apt-get install -y android-studio
apt-get install -y lib32z1 lib32ncurses5 lib32stdc++6
apt-get install -y libxrender1 libxtst6 libxi6
apt-get install -y adb
# apt-get install -y linux-headers-generic
# KVM can't run in VirtualBox
# apt-get install -y qemu-kvm libvirt-bin virtinst bridge-utils
# modprobe vhost_net
# echo vhost_net >> /etc/modules

ln -s /opt/android-studio/bin/studio.sh /usr/local/bin/android-studio

# cat << EOF >> /etc/udev/rules.d/51-android.rules
# SUBSYSTEM=="usb", ATTRS{idVendor}=="18d1", MODE="0666", GROUP="plugdev"
# EOF
