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
今後は Prezto に移行するかも

### vim
プラグインとかいれたいけど，とりあえず面倒なので保留．いれるならここのとか．
https://qiita.com/lighttiger2505/items/592caac64fd1e1781596

## Anaconda
Ansibleにより導入
Jupyter labに幾つかの拡張を入れた

* Variable Inspector ： 変数名や型，内容を常に横に表示しておけるようになる．
* Table of Contents ： Markdown記法で書いた見出しが一覧で表示され，目的の見出しにワンクリックで飛べるようになる．
* git連携
* ipywidgets ： 画像とかのインタラクティブな操作を可能に
* jupyterlab voyager ： csvとかの可視化

## 参考
PROMPTの設定は
