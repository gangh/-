#!/bin/sh

# init user gang
useradd -d /home/gang -m -g group -G root gang
cd /home/gang

# install packages
apt install tmux tree htop git hub wget

# install anaconda python
wget https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh
bash Anaconda3-4.3.1-Linux-x86_64.sh 

# NOTE: This is an example that sets up SSH authorization. To use it, you'd need to replace "ssh-rsa AA... youremail@example.com" with your SSH public.
# You can replace this entire script with anything you'd like, there is no need to keep it


mkdir -p /root/.ssh
chmod 600 /root/.ssh
echo ssh-rsa AA... youremail@example.com > /root/.ssh/authorized_keys
chmod 700 /root/.ssh/authorized_keys
