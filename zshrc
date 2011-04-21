function _zshrc_progress {
  if [ -t 1 ]; then
    echo -n "\r[Kzsh initilaising... [1m$1[0m"
  fi
}
function _zshrc_progress_clear {
  if [ -t 1 ]; then
    echo -n "\r[K"
  fi
}

# Load functions
_zshrc_progress "functions"
fpath=($fpath ~/.zfunc)
for func in $^fpath/*(N-.x:t); autoload $func

local file
for file in ~/.zfunc/*; do
    autoload -U $file:t
done

for i in ~/.zsh/enabled/*; do
    _zshrc_progress ${i:t}
    function _zshrc_helper {
        source $i
    }
    _zshrc_helper
    unfunction _zshrc_helper
done


_zshrc_progress_clear
