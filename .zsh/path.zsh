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

path=(
~/bin
~/.local/bin
~/.screenlayout
~/dev/jmc/target/products/org.openjdk.jmc/linux/gtk/x86_64
$ZSH/bin
$GOPATH/bin
~/.cabal/bin
$(ruby -e "print Gem.user_dir")/bin
/usr/bin/core_perl
$path
)

fpath=(
$ZSH/completions/src
$ZSH/functions
$ZSH
$fpath
)
