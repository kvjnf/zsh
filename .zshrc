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

