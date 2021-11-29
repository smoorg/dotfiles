set number
" search while writting
set incsearch
syntax on

set pyx=3


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
" leader

nmap <C-T> :tabnew<CR>
nmap <leader>w <cmd>tabclose<CR>
"nmap <C-l> :tabnext<CR>
"nmap <C-h> :tabprevious<CR>
