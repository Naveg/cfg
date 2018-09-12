# Setup fzf
# ---------
if [[ ! "$PATH" == */home/naveg/.fzf/bin* ]]; then
  export PATH="$PATH:/home/naveg/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/naveg/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/naveg/.fzf/shell/key-bindings.bash"

