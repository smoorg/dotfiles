set number
" search while writting
set incsearch
syntax on

set pyx=3

source $HOME/.config/nvim/general/keys.vim

source $HOME/.config/nvim/call-plugins.vim

source $HOME/.config/nvim/configs/nerd-tree.vim
" source $HOME/.config/nvim/configs/ycm.vim
source $HOME/.config/nvim/configs/coc.vim
colorscheme molokai 

" TYPESCRIPT

	au BufNewFile,BufRead *.ts setlocal filetype=typescript
	au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx


