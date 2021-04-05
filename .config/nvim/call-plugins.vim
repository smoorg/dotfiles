call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
	Plug 'moll/vim-bbye' 			" buffer enhancement
	Plug 'preservim/nerdtree'		" sidebar
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'scrooloose/nerdcommenter'		" comments

" look and feel
	Plug 'bling/vim-airline'
	Plug 'rafi/awesome-vim-colorschemes'	" themes
	Plug 'itchyny/lightline'

" support languages
	Plug 'neoclide/coc.nvim', { 'branch': 'release' } 		
	Plug 'neoclide/coc-tsserver'
	"Plug 'neoclide/coc-omnisharp'
	Plug 'OmniSharp/omnisharp-vim'

"	file namanger
	Plug 'rbgrouleff/bclose.vim'		" ranger needs it
	Plug 'francoiscabrol/ranger.vim'	" file manager

	Plug 'vimwiki/vimwiki', { 'branch': 'master' }
call plug#end()

