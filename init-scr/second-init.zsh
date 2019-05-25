#! /bin/zsh
# setting

echo "setting dotfiles and installing analysis env (by ansible)."

tmp_path=${HOME}/Dropbox/dotfiles

if [ ! -e ${tmp_path} ]; then
  echo "Dropbox Installation first."
  exit 1
fi

ln -snf ${tmp_path}/zsh_conf/inputrc ~/.inputrc
ln -snf ${tmp_path}/zsh_conf/zshrc ~/.zshrc
ln -snf ${tmp_path}/vim_conf/vimrc ~/.vimrc

cd ${tmp_path}/ansible/analytics_ansible/

ansible-playbook -i "localhost," --connection=local site.yml

