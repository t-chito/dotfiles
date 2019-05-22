#! /bin/zsh

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install vim, zsh, git, tmux, htop, build-essential, mosh, wget
#あんましtmuxとかmosh使わないしな．．．


cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
wget -O - "https://www.dropbox.com/download?dl=packages/dropbox.py"


# setting file
files = ~/Dropbox/dotfiles/###

for item in files; do
	ln -s ${item} ~/
done

# anaconda install
	# pass
# jupyter lab
  #configを作成
# cd ~
# jupyter notebook --generate-config
# cd .jupyter

# openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mykey.key -out mycert.pem