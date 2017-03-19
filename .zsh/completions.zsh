setopt COMPLETE_IN_WORD
setopt LIST_AMBIGUOUS
setopt IGNORE_EOF
setopt AUTO_MENU
unsetopt MENU_COMPLETE
setopt ALWAYS_TO_END
setopt COMPLETE_ALIASES

autoload -Uz compinit
if [[ "$OSTYPE" == darwin* ]]; then
  if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
    compinit
  else
    compinit -C
  fi
else
  if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
  else
    compinit -C;
  fi
fi

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending
