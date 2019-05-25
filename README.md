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

## installed software

tools:
install-listに記載

Dropbox

### zsh

* prompt==pure: https://github.com/sindresorhus/pure
* zsh-autosuggestions - 履歴から勝手に補完してくれる
* zsh-syntax-highlighting - コマンドを色分けしてくれる
* zsh-completions - 補完を強化
* zsh-history-substring-search - 途中まで打ちカーソル上下で補完を切り替えれる

参考： https://qiita.com/qwerty/items/92412925ac2cb9eabf4c

anaconda?:

vim:

## 参考
PROMPTの設定は
