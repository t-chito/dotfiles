#! /bin/zsh

kaggle competitions list
read -p "conpe name を入れてください: " name
read -p "${name} でguthubに公開リポジトリを作成しておいてください => Hit Enter "
scr_git_path="https://github.com/t-chito/k-code.git"


mkdir ~/kaggle/${name}
cd ~/kaggle/${name}

for item in (data/ref data/input data/output data/preprocessed lab outcome/logs outcome/models outcome/features); do
	mkdir -p ${item} #すでにあってもOKのやつ
	touch ${item}/.gitkeep
done


git clone ${scr_git_path} #k-code
rm -rf k-code/.git
mv k-code scr


kaggle competitions download -c ${name} -p ./data/input/ #-p 保存先


#kaggle competitions submit -c titanic -f pred.csv