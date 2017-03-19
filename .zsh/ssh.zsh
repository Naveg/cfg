# prevent stale ssh sockets
if [ -S "$SSH_AUTH_SOCK" ] && [ ! -h "$SSH_AUTH_SOCK" ]; then
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

if [ $commands[keychain] ]; then
  eval $(keychain --eval --quiet --nogui id_rsa id_rsa_alloy)
fi
