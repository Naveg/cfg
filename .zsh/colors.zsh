autoload colors; colors
export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true
export GREP_COLOR='3;33'

#GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/etc/grc.bashrc
fi
