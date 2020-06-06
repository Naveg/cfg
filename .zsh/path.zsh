path=()
if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
else
  path=(
  /usr/local/sbin
  /usr/local/bin
  /usr/sbin
  /usr/bin
  /sbin
  /bin
  )
fi

if [ $commands[ruby] ]; then
  path=(
    $(ruby -e "print Gem.user_dir")/bin
    $path
  )
fi

path=(
~/bin
~/.local/bin
~/google-cloud-sdk/bin
~/.screenlayout
~/dev/jmc/target/products/org.openjdk.jmc/linux/gtk/x86_64
$ZSH/bin
$GOPATH/bin
~/.cabal/bin
/usr/bin/core_perl
$PYENV_ROOT/shims
~/.cargo/bin
$path
)

fpath=(
$ZSH/completions/src
$ZSH/functions
$ZSH
$fpath
)
