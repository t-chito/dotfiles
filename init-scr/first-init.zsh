echo "apt init and some packages installation."
echo "And Dropbox Install."
#packages installation
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt -y install vim zsh git tmux htop build-essential mosh wget npm
sudo chsh -s /bin/zsh
npm install --global pure-prompt

# Dropbox
wget -O - "https://www.dropbox.com/download?dl=packages/dropbox.py"
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
