source $ZSH/completions.zsh
source $ZSH/colors.zsh
source $ZSH/path.zsh
source $ZSH/prompt.zsh
source $ZSH/history.zsh
source $ZSH/alias.zsh
source $ZSH/keys.zsh
source $ZSH/python.zsh
source $ZSH/ssh.zsh
source $ZSH/fasd.zsh
source $ZSH/gcloud.zsh

autoload -U $ZSH/functions/*(:t)

unsetopt BG_NICE
unsetopt HUP
unsetopt BEEP
unsetopt LISTBEEP
unsetopt HIST_BEEP

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
