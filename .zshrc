##login command
#xmodmap $HOME/.Xmodmap
#rsync -aur ~/suzaku/ takahashi@v192.168.1.76:/home/takahashi/suzaku/

zstyle ':completion:*' list-colors 'di=36' 'ln=35'
zstyle ':completion:*:default' menu select=1

#####ssh rename
alias via="ssh takahashi@192.168.1.76"
alias schian="ssh takahashi@192.168.1.74"
alias gplant="ssh takahashi@192.168.1.59"
alias flabat="ssh takahashi@192.168.1.45"

###alias command
alias goo="google-chrome &"
alias la="ls -aXF --color=auto"
alias ls="ls -XF --color=auto"
#Xは順番を拡張子ごとにする
alias lr="ls -RXF --color=auto"
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

export SSW=~/software/ssw
export SSW_INSTR="gen hessi xray spex"
#source $SSW/gen/setup/setup.ssw
#zshでの起動用PATH
export PATH="/home/takahashi/software/ssw/bin:$PATH"
alias SSWidl='SSWidl nox'
export SSW_INSTR="gen hessi xray spex"
#export IDL_DIR=/usr/local/itt/idl
export IDL_DIR=/usr/share/gnudatalanguage
export IDL_PATH=/usr/share/gnudatalanguage/lib
$SSW/gen/setup/ssw_gdl
#####setting


#bindkey -v

#history
HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000
setopt hist_ignore_dups
setopt append_history
setopt share_history

#ls color
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jpg=01;35:*.png=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.png=01;35:*.mpg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35'

# 補完候補もLS_COLORSに合わせて色が付くようにする
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# added by Anaconda3 4.3.0 installer
#export PATH="/home/takahashi/software/anaconda3/bin:$PATH"

# added by Anaconda2 4.3.0 installer
export PATH="/home/takahashi/software/anaconda2/bin:$PATH"
