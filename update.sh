#houseclean
sudo apt-get autoclean -y # only removes files that cannot be downloaded anymore (obsolete)
sudo apt-get clean -y

#refresh
sudo apt-get update -y #resync package index
sudo apt-get upgrade -y #newest versions of all packages, update must be run first

#would upgrade you to the latest kernel in the repositories
#dist-upgrade is also able to remove existing packages if required
sudo apt-get dist-upgrade -y

# fix Broken packages -f 
sudo apt-get -f install -y
sudo dpkg --configure -a -y

# Remove lock
# If you are absolutely sure you do not have another upgrade process running.
# Locked dpkg - only if sure you are not running another update.

sudo rm /var/lib/dpkg/lock
sudo dpkg --configure -a 
