""let g:OmniSharp_selector_ui = 'fzf'    " Use fzf
"augroup omnisharp_commands
"    autocmd!
"
"    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
"    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
"
"    " Synchronous build (blocks Vim)
"    "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
"    " Builds can also run asynchronously with vim-dispatch installed
"    autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
"    " automatic syntax check on events (TextChanged requires Vim 7.4)
"    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck
"
"    " Automatically add new cs files to the nearest project on save
"    autocmd BufWritePost *.cs call OmniSharp#AddToProject()
"
"    "show type information automatically when the cursor stops moving
"    "autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
"
"    "The following commands are contextual, based on the current cursor position.
"
"    autocmd FileType cs nnoremap <F12> :OmniSharpGotoDefinition<cr>
"    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
"    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
"    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
"    autocmd FileType cs nnoremap <S-F12> :OmniSharpFindUsages<cr>
"    "finds members in the current buffer
"    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
"    " cursor can be anywhere on the line containing an issue
"    autocmd FileType cs nnoremap <C-Space>  :OmniSharpFixIssue<cr>
"    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
"    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
"    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
"    "navigate up by method/property/field
"    autocmd FileType cs nnoremap <C>- :OmniSharpNavigateUp<cr>
"    "navigate down by method/property/field
"    autocmd FileType cs nnoremap <C>+ :OmniSharpNavigateDown<cr>
"
"augroup END
"
"
