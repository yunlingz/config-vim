Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Plug 'neoclide/coc.nvim', { 'commit': '9be9ae' }


nnoremap <silent> gD :call CocActionAsync('jumpDeclaration')<CR>
nnoremap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> gi :call CocActionAsync('jumpImplementation')<CR>

nnoremap <silent> K :call CocActionAsync('doHover')<CR>

nnoremap <silent> <Leader>rn :call CocActionAsync('rename')<CR>
nnoremap <silent> <Leader>i :call CocActionAsync('doQuickfix')<CR>
nnoremap <silent> <Leader>f :call CocActionAsync('format')<CR>

let g:coc_filetype_map = {
  \ 'c.doxygen': 'c',
  \ 'cpp.doxygen': 'cpp',
  \ }
command! LR CocRestart

" let g:coc_global_extensions = [
"   \ 'coc-pyright',
"   \ ]

" let g:coc_global_extensions = [
"   \ 'coc-pyright',
"   \ 'coc-tsserver',
"   \ 'coc-eslint',
"   \ 'coc-prettier',
"   \ ]
