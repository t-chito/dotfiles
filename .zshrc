### --- path rename --- ###

# added by Anaconda3 5.0.0 installer
export PATH="/home/takahashi/.software/anaconda3/bin:$PATH"

# added by Anaconda2 4.3.0 installer
#export PATH="/home/takahashi/software/anaconda2/bin:$PATH"

google-drive-ocamlfuse ~/.GoogleDrive

#heasoft
export HEADAS=/usr/local/software/heasoft/heasoft-6.22.1-patch/x86_64-unknown-linux-gnu-libc2.25
export FVTMP=/tmp
export PFILES=$HOME/.pfiles:$PFILES
export CALDB=/usr/local/software/caldb/
export CALDBCONFIG=$CALDB/software/tools/caldb.config
export CALDBALIAS=$CALDB/software/tools/alias_config.fits


#git and so on
export SO_SCR=~/git_repos/solar_script
export MY_SETT=~/git_repos/dotfiles
export GIT_REPOS=~/git_repos/

#IDL
export IDL_STARTUP=$HOME/.idl_startup

export PATH="$GIT_REPOS/psp_script:$SO_SCR/wam:$SO_SCR/rhessi:$SO_SCR/flarelist:$PATH"
export PATH="$GIT_REPOS/mybin:$PATH"

export HSI_DATA_USER=$HOME/work/rhessi/

### --- alias command --- ###
alias heainit=". $HEADAS/headas-init.sh"

#log command
alias solarlogs="vim ~/git_repos/solar_logs/solarflare.log"
alias psplogs="vim ~/git_repos/psp_logs/psp.log"

#cd command
alias thesis="cd ~/git_repos/tex_t/thesis"
alias solarscr="cd $SO_SCR"
alias pspscr="cd ~/git_repos/psp_script/"

#flabat
alias py27="source activate py27"
#prometheus
alias mlpy="source activate mlpy"
alias kill-py="source deactivate"
alias goo="google-chrome &"
alias la="ls -aXF --color=auto"
alias ls="ls -XF --color=auto"
alias jn="jupyter-notebook"
#Xは順番を拡張子ごとにする
alias lr="ls -RXF --color=auto"
alias his="history -i 1"
alias vim="vim "
alias vimz="vim ~/.zshrc"
alias vimb="vim ~/.bashrc"
alias vimv="vim ~/.vimrc"
alias vimgv="vim ~/.gvimrc"
alias vimc="vim ~/.cshrc"

alias xwin='export DISPLAY=kyte-PC:0.0'

### --- default command --- ###

git_check

### --- setting --- ###
if [ `hostname` = "kyte-PC" ]; then
	export DISPLAY=kyte-PC:0.0
fi

autoload -Uz compinit; compinit


zstyle ':completion:*' list-colors 'di=36' 'ln=35'
zstyle ':completion:*:default' menu select=1

setopt auto_pushd
setopt correct
setopt no_beep
setopt list_packed
setopt SH_WORD_SPLIT
#対話シェル中でのコメントの有効化
setopt interactive_comments


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
export PROMPT="%{$fg_bold[blue]%}${HOST} $PROMPT"

export HEADAS=/usr/local/software/heasoft/heasoft-6.22.1-patch/x86_64-unknown-linux-gnu-libc2.25

export FVTMP=/tmp
export PFILES=$HOME/.pfiles:$PFILES

export CALDB=/usr/local/software/caldb/
export CALDBCONFIG=$CALDB/software/tools/caldb.config
export CALDBALIAS=$CALDB/software/tools/alias_config.fits

alias heainit=". $HEADAS/headas-init.sh"

export MY_SCR=/home/takahashi/git_repos/script/

export PATH="$PATH:/home/takahashi/git_repos/script/WAM:/home/takahashi/git_repos/script/psp"


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
