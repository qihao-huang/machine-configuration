cat /proc/version # check system version
uname -a # check linux kernel
lsb_release -a # check ubuntu version

# python3
sudo apt install python3-pip
pip3 --version

pip3 install --upgrade pip3
pip3 install powerline-status

# python2 
sudo apt install python-pip
pip --version

sudo apt-get install fcitx
sudo apt install git

curl -sLf https://spacevim.org/install.sh | bash

#---------------ssh server-------------------
sudo apt-get update
sudo apt-get install openssh-server
ps -e | grep ssh
/etc/init.d/ssh start
sudo /etc/init.d/ssh resart # /etc/ssh/sshd_config
# with SFTP also, default port:22

sudo ldconfig
sudo updatedb