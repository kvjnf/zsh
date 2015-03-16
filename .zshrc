# Created by newuser for 4.3.10
# cdコマンドの省略ができるようになる
setopt AUTO_CD
# cdで移動した履歴の保存ができる
setopt AUTO_PUSHD
# cd +と数字でタブでディレクトリ補完してくれるようになる
autoload -Uz compinit
compinit
#プロンプトに関する設定
PROMPT="[%n@%m]%# "
RPROMPT="[%~]"
#^Dでzshを終了しない
setopt IGNORE_EOF
#^Q/^Sのフローコントロールを無効にする
setopt NO_FLOW_CONTROL
#beep音を鳴らさない
setopt NO_BEEP
#補完候補が２つ以上の場合、選択出来るようにする
zstyle ':completion:*:default' menu select=2
#ll alias 
alias ll='ls -la'
#MAMPのpath
PATH=$PATH:/Applications/MAMP/Library/bin
#macvimの場合にalias vimにmacvimを設定
#case "$(uname)" in

#    Darwin) # OSがMacならば
#        if [[ -d /Applications/MacVim.app ]]; then # MacVimが存在するならば
#	    alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
#	    alias vi=vim
#	fi
#	;;

#    *) ;; # OSがMac以外ならば何もしない
#esac
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#######################################
# Color
#######################################
# 色の設定
export LSCOLORS=Exfxcxdxbxegedabagacad
# 補完時の色の設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# ZLS_COLORSとは？
export ZLS_COLORS=$LS_COLORS
# lsコマンド時、自動で色がつく(ls -Gのようなもの？)
export CLICOLOR=true
# 補完候補に色を付ける
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

#######################################
# Alias
#######################################
alias his='history'
alias p='pwd'
alias e='echo'
alias v='vim'
alias t='tree'
alias c='cat -n'
alias l='ls -a'
 
alias vi='vim'
alias ll='ls -al'
alias log='tail -f 5'
alias g='git'
alias gs='git status'
alias gl='git log'
alias rm='rm -i'
 
# sublime
alias s="subl"
