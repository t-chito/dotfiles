#! /bin/zsh 

echo "extend jupyter lab."

curl -sL https://deb.nodesource.com/setup_11.x | bash -
sudo apt install -y --no-install-recommends nodejs

function inspack() {
  pack=$1 #:?"You have to specify a library file"}
  jupyter labextension install ${pack}
}

inspack @lckr/jupyterlab_variableinspector

inspack @jupyterlab/toc

inspack @jupyterlab/git
conda install -c conda-forge jupyterlab-git
jupyter serverextension enable --py jupyterlab_git

conda install -c anaconda ipywidgets
inspack @jupyter-widgets/jupyterlab-manager
jupyter nbextension enable --py --sys-prefix widgetsnbextension

inspack jupyterlab_voyager
