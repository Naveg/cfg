export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export VIRTUAL_ENV_DISABLE_PROMPT=1
pyenv() {
  eval "$(command pyenv init -)"
  pyenv "$@"
}
py() {
  eval "$(pyenv virtualenv-init -)"
}
