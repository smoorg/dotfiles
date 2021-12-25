set number
" search while writting
set incsearch
syntax on

set pyx=3

" make tab act as 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

nnoremap <SPACE> <Nop>
let mapleader = " "

source $XDG_CONFIG_HOME/nvim/call-plugins.vim

for f in split(glob("$XDG_CONFIG_HOME/nvim/configs/*.vim", '\n'))
	exe 'source' f
endfor

colorscheme molokai 

" TYPESCRIPT

	au BufNewFile,BufRead *.ts setlocal filetype=typescript
	au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
