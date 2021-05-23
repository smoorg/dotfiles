call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
" buffer enhancement
	Plug 'moll/vim-bbye'
" sidebar
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'jistr/vim-nerdtree-tabs'
" comments
	Plug 'scrooloose/nerdcommenter'

" look and feel
	Plug 'bling/vim-airline'
" themes
	Plug 'rafi/awesome-vim-colorschemes'
	"Plug 'itchyny/lightline'

" support languages
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
	Plug 'neoclide/coc-tsserver'
	"Plug 'neoclide/coc-omnisharp'
	Plug 'OmniSharp/omnisharp-vim'

" debugging
	Plug 'puremourning/vimspector'
	Plug 'szw/vim-maximizer'

" file mananger
	Plug 'rbgrouleff/bclose.vim'
	" ranger needs it
	Plug 'francoiscabrol/ranger.vim'

	Plug 'vimwiki/vimwiki'

" telescope
 	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
call plug#end()

