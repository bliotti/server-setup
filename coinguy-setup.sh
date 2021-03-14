#!/bin/bash

# PRINT INFO
cat /etc/os-release
uname -r

apt update -y && apt upgrade -y
apt dist-upgrade -y

apt install -y sudo fail2ban htop curl zsh git tmux vim
# need to logout to use sudo

apt install -y ufw
ufw limit in ssh
ufw enable -y


## Change to no to disable tunnelled clear text passwords
# PasswordAuthentication no
## only ipv4
# AddressFamily inet
#
# vi /etc/ssh/sshd_config
# edit file
# sudo systemctl restart sshd

adduser --disabled-password coinguy
usermod -a -G sudo coinguy

# SET PASSWORD is interactive?
# passwd coinguy

# show ssh info
sudo ss -atpu


mkdir -p /home/coinguy/.ssh/
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIADSUlenyNJqYsmOtYj4P3a96ruSdW7ruU3TrNfEPMte' >> /home/coinguy/.ssh/authorized_keys

can chown -R coinguy /home/coinguy

exit



#################################
########### localhost ###########
#################################
ssh coinguy


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# -y
# password

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# change .zshrc
# plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# https://gitlab.com/aerth/dot/
