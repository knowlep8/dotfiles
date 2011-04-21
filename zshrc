function _zshrc_progress {
  $HOME/bin/isatty && echo -n "\r[Kzsh initilaising... [1m$1[0m"
}
function _zshrc_progress_clear {
  $HOME/bin/isatty && echo -n "\r[K"
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
