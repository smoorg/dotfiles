"map <C-b> :NERDTreeMirrorToggle<CR>
"map <leader>h :NERDTreeFocus<CR>
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p 

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_d+' && bufname('%') !~ 'NERD_tree_d+' && winnr('$') > 1 |
"     let buf=bufnr() | buffer# | execute "normal! <C-W>w" | execute 'buffer'.buf | endif

" Start NERDTree when Vim starts with a directory argument.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
"     execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"     quit | endif

" Change automatically Vim's dir with NERDTree's
let g:NERDTreeChDirMode = 2 
let g:NERDTreeMapOpenSplit='$'

" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * silent NERDTreeMirror

"vim-nerdtree-tabs settings :
" Open NERDTree with vim
"let g:nerdtree_tabs_open_on_console_startup=0
" Open NERDTree in the new tabs
let g:nerdtree_tabs_open_on_new_tab=0
let g:nerdtree_tabs_meaningful_tab_names=1
let g:nerdtree_tabs_toggle=0
let g:nerdtree_tabs_autoclose=1
" Synchronize NERDTree's tabs
let g:nerdtree_tabs_synchronize_view=1

