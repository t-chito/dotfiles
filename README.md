# dotfiles
自分用のLinux環境PCの設定ファイル．  

ディレクトリ構成(扱っているもの)は以下の通り
* zsh
* python
* vim
* others(現状ではtmuxとAnsible)

## 概要と方針
"ごちゃごちゃしないように"をテーマにしています．  
* あまり使わないようなものは入れないので，見た目に関する設定が多いかも．
* Ansibleで管理できるようにしたい

ファイルの構成は以下の通り
- zsh_conf
-- .zshrc：統合用ファイル

- python_conf
- vim_conf

- others_conf

## 参考
PROMPTの設定は
https://github.com/sindresorhus/pure
