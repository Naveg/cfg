zle -N newtab

ZLE_REMOVE_SUFFIX_CHARS=""

bindkey -e
bindkey "^K" kill-whole-line                      # ctrl-k
bindkey "^R" history-incremental-search-backward  # ctrl-r
bindkey "^A" beginning-of-line                    # ctrl-a
bindkey "^E" end-of-line                          # ctrl-e
bindkey "^[[H" beginning-of-line                  # home
bindkey "^[[F" end-of-line                        # end
bindkey "[B" history-search-forward               # down arrow
bindkey "[A" history-search-backward              # up arrow
bindkey "^D" delete-char                          # ctrl-d
bindkey "^F" forward-char                         # ctrl-f
bindkey "^B" backward-char                        # ctrl-b
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
