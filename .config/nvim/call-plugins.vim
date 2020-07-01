call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
"	Plug 'Shougo/deoplete.nvim' " , { 'do': ':UpdateRemotePlugins' }
	Plug 'moll/vim-bbye' 			" buffer enhancement
	Plug 'preservim/nerdtree'		" sidebar
	"Plug 'tpope/vim-surround'		" emmet
	"Plug 'bling/vim-airline'
	"Plug 'scrooloose/nerdcommenter'		" comments
	"Plug 'jiangmiao/auto-pairs'

	Plug 'rafi/awesome-vim-colorschemes'	" themes

"	Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim', { 'branch': 'release' } 		" autocompletion
	Plug 'neoclide/coc-tsserver'
"	Plug 'ianks/vim-tsx' 			" tsx format recognize
"	Plug 'leafgarland/typescript-vim' 	" typescript checker
	Plug 'rbgrouleff/bclose.vim'		" ranger needs it
	Plug 'francoiscabrol/ranger.vim'	" file manager

call plug#end()

