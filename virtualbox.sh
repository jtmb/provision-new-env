# purge old versions
sudo apt remove virtualbox
sudo apt purge virtualbox

# Build Virtualbox
sudo apt-get update
sudo apt install virtualbox
sudo apt install virtualbox-ext-pack
sudo apt-get install virtualbox-dkms
sudo dpkg-reconfigure virtualbox-dkms 
sudo dpkg-reconfigure virtualbox
sudo apt-get install linux-headers-generic
