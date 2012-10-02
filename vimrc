" System vimrc file for Mac OS X
" Author:  Benji Fisher <benji@member.AMS.org>
" Last modified:  5 April 2003

" Get a good value for $PATH.  For example, if teTeX is installed, this
" should add the path to tex, pdflatex, etc.
" This should only make a difference when vim is started from the Finder or
" with open.
let $PATH = system("printenv PATH")
let $PATH = substitute($PATH, "\<C-J>$", "", "")

" If running in a Terminal window, set the terminal type to allow syntax
" highlighting.
" Otherwise, change directory on startup.
if !has("gui_running")
	set term=ansi
else
	autocmd VimEnter * if getcwd()=="/" | if strlen(@%) | cd %:p:h | else | cd | endif | endif
endif

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

:syntax on
:set shiftwidth=4
:set softtabstop=4
:set tabstop=8
:set smartindent
:set statusline=%1*%F%*\ %y\ %2*%r%m%*\ %=%l/%L\ (%p%%)
:set laststatus=2
:set sm
:set expandtab
:set tags=./tags,./../tags,./*/tags

autocmd BufNewFile,BufRead *.json set ft=javascript

filetype plugin on
