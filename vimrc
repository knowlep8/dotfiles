" Sources for this came from many places
" vimrc of Paul Knowles

" Get a good value for $PATH.  For example, if teTeX is installed, this
" should add the path to tex, pdflatex, etc.
" This should only make a difference when vim is started from the Finder or
" with open.
let $PATH = system("printenv PATH")
let $PATH = substitute($PATH, "\<C-J>$", "", "")

call pathogen#infect()

set rtp+=/usr/local/go/misc/vim

if exists('+colorcolumn')
    set colorcolumn=80
endif

syntax on
set shiftwidth=4
set softtabstop=4
set tabstop=8
set smartindent

hi User1 ctermbg=black ctermfg=white   guibg=green guifg=red
hi User2 ctermbg=black ctermfg=green   guibg=red   guifg=blue
hi User3 ctermbg=black ctermfg=yellow  guibg=blue  guifg=green
hi User4 ctermbg=black ctermfg=red     guibg=blue  guifg=green

set statusline=
set statusline+=%1*%F%m%r%h%w\ 
set statusline+=%2*%{fugitive#statusline()}\    
set statusline+=%=
set statusline+=%3*\ [line\ %l\/%L]          
set statusline+=%4*\ [col\ %v]
set laststatus=2
set sm
set expandtab
set tags=./tags,./../tags,./*/tags

filetype plugin indent on

autocmd BufNewFile,BufRead *.json set ft=javascript

