sudo apt install tldr htop
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  
root
    2  usermod -aG docker brian
    5  chsh -s $(which zsh) brian
    6  dpkg-reconfigure -plow unattended-upgrades
