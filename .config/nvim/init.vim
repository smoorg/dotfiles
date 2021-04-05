set number
" search while writting
set incsearch
syntax on

set pyx=3

source $XDG_CONFIG_HOME/nvim/general/keys.vim
source $XDG_CONFIG_HOME/nvim/call-plugins.vim

for f in split(glob('~/.config/nvim/configs/*.vim', '\n'))
	exe 'source' f
endfor

colorscheme molokai 

" TYPESCRIPT

	au BufNewFile,BufRead *.ts setlocal filetype=typescript
	au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx


