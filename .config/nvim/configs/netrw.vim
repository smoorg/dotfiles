let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 0
let g:netrw_winsize = 20
let g:NetrwIsOpen = 0
let g:netrw_list_hide = netrw_gitignore#Hide()

function! OpenToRight()
	:normal v
	let g:path=expand('%:p')
	:q!
	execute 'belowright vnew' g:path
	:vertical resize 30
	:normal <C-w>l
endfunction

function! ToggleNetrw()
	if g:NetrwIsOpen
		let i = bufnr("$")
		while (i >= 1)
			if(getbufvar(i "&filetype") == "netrw")
				silent exe "bwipeout " . i
			endif
			let i-=1
		endwhile
		g:NetrwIsOpen=0
	else
		g:NetrwIsOpen=1
		silent Lexplore
	endif
endfunction


noremap <silent> <C-f> :call ToggleNetrw()<CR>

function! NetrwMappings()
	noremap <buffer> <C-l> <C-w>l
	noremap <buffer> V :call OpenToRight()<CR>
	noremap <F7> netrw-d
	noremap <BS> netrw-D 
endfunction

augroup netrw_mappings
	autocmd!
	autocmd filetype netrw call NetrwMappings()
augroup END
