###login command
#xmodmap $HOME/.Xmodmap
#rsync -aur ~/suzaku/ takahashi@v192.168.1.76:/home/takahashi/suzaku/

#####ssh rename
#alias via="ssh -X takahashi@192.168.1.76"
#alias schian="ssh -X takahashi@192.168.1.74"
#alias gplant="ssh -X takahashi@192.168.1.59"


###alias command
alias goo="google-chrome &"
alias la="ls -aX --color"
alias ls="ls -X --color"
#Xは順番を拡張子ごとにする
alias lr="ls -RX --color"
alias his="history -i 1"
alias vim="vim "
alias vimz="vim ~/.zshrc"
alias vimb="vim ~/.bashrc"
alias vimv="vim ~/.vimrc"
alias vimgv="vim ~/.gvimrc"



#####setting
autoload -Uz compinit; compinit

setopt auto_pushd
setopt correct
setopt no_beep
setopt list_packed
setopt SH_WORD_SPLIT

export LANG=ja_JP.UTF-8
export LESS=-q
#export LANG=ja_JP.eucJP



######promopt appearance#############################################
autoload -U colors; colors

#my prompt
tmp_prompt="%{${fg[cyan]}%}%n%# %{${reset_color}%}"
tmp_prompt2="%{${fg[cyan]}%}%_> %{${reset_color}%}"
tmp_rprompt="%{${fg[green]}%}[%~]%{${reset_color}%}"
tmp_sprompt="%{${fg[yellow]}%}%r is correct? [Yes, No, Abort, Edit]:%{${reset_color}%}"
[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{^[[37m%}${HOST%%.*} ${PROMPT}"


#root user
if [ ${UID} -eq 0 ]; then
  tmp_prompt="%B%U${tmp_prompt}%u%b"
  tmp_prompt2="%B%U${tmp_prompt2}%u%b"
  tmp_rprompt="%B%U${tmp_rprompt}%u%b"
  tmp_sprompt="%B%U${tmp_sprompt}%u%b"
  [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
        PROMPT="%{^[[37m%}${HOST%%.*} ${PROMPT}"
fi

PROMPT=$tmp_prompt    # 通常のプロンプト
PROMPT2=$tmp_prompt2  # セカンダリのプロンプト(コマンドが2行以上の時に表示される)
RPROMPT=$tmp_rprompt  # 右側のプロンプト
SPROMPT=$tmp_sprompt  # スペル訂正用プロンプト



export HEADAS=/usr/local/software/heasoft/heasoft-6.20/x86_64-unknown-linux-gnu-libc2.23
export CALDB=/usr/local/software/caldb/
export CALDBCONFIG=$CALDB/software/tools/caldb.config
export CALDBALIAS=$CALDB/software/tools/alias_config.fits

alias heainit=". $HEADAS/headas-init.sh"

#####setting


#bindkey -v

#history
HISTFILE=~/.zsh_history
SAVEHIST=10000
#HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S] " もともとあるようだ
HISTSIZE=10000
#HISTIGNORE="ls*:history:" これはbash用であってzshにはない
setopt hist_ignore_dups
setopt append_history

#dead zshaddhistory() {
#    local line=${1%%$'\n'}
#    local cmd=${line%% *}

    # 以下の条件をすべて満たすものだけをヒストリに追加する
#    [[ ${#line} -ge 5
#        && ${cmd} != (ls|la|lx)
#        && ${cmd} != (his)
#        #&& ${cmd} != (rm)
#    ]]
#}
setopt share_history

#ls color
# ls
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'

# 補完候補もLS_COLORSに合わせて色が付くようにする
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# added by Anaconda3 4.3.0 installer
##Vexport PATH="/home/takahashi/anaconda3/bin:$PATH"

# added by Anaconda2 4.3.0 installer
export PATH="/home/takahashi/anaconda2/bin:$PATH"
