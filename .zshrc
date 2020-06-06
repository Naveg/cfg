export ZSH=$HOME/.zsh

source $ZSH/completions.zsh
source $ZSH/colors.zsh
source $ZSH/prompt.zsh
source $ZSH/history.zsh
source $ZSH/alias.zsh

source $ZSH/keys.zsh
source $ZSH/ssh.zsh
[ -f $ZSH/games.zsh ] && source $ZSH/games.zsh

source $ZSH/python.zsh
source $ZSH/go.zsh
source $ZSH/nvm.zsh
source $ZSH/r.zsh

source $ZSH/fasd.zsh
source $ZSH/gcloud.zsh

source $ZSH/path.zsh

autoload -U $ZSH/functions/*(:t)

unsetopt BG_NICE
unsetopt HUP
unsetopt BEEP
unsetopt LISTBEEP
unsetopt HIST_BEEP

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

if [[ ! -f /usr/share/terminfo/x/xterm-termite ]]; then
  if [[ -d /usr/share/terminfo ]]; then
    sudo cp ~/.terminfo/x/xterm-termite /usr/share/terminfo/x/xterm-termite
  fi
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.fzf.colors ] && source ~/.fzf.colors

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/naveg/.sdkman"
[[ -s "/home/naveg/.sdkman/bin/sdkman-init.sh" ]] && source "/home/naveg/.sdkman/bin/sdkman-init.sh"
