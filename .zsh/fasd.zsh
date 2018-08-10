export FZF_DEFAULT_OPTS="--color=light -e"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ $commands[fasd] ]; then # check if fasd is installed
  fasd_cache="$HOME/.fasd-init-cache"
  if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
    fasd --init auto >| "$fasd_cache"
  fi
  source "$fasd_cache"
  unset fasd_cache

  alias v="f -e $EDITOR"
  alias sv="f -e sudo $EDITOR"
fi
