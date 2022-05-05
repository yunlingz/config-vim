" Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Plug 'neoclide/coc.nvim', { 'commit': '9be9ae' }

Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }

Plug 'neoclide/coc-tsserver', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-prettier', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-eslint', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-css', { 'do': 'yarn install --frozen-lockfile' }

" Plug 'fannheyward/coc-eslint', { 'branch': 'feat/eslint-8', 'do': 'yarn install --frozen-lockfile' }

nnoremap <unique> <silent> gD :call CocActionAsync('jumpDeclaration')<CR>
nnoremap <unique> <silent> gd :call CocActionAsync('jumpDefinition')<CR>
nnoremap <unique> <silent> gi :call CocActionAsync('jumpImplementation')<CR>

nnoremap <unique> <silent> K :call CocActionAsync('doHover')<CR>

nnoremap <unique> <silent> <Leader>r :call CocActionAsync('rename')<CR>
nnoremap <unique> <silent> <Leader>i :call CocActionAsync('doQuickfix')<CR>
nnoremap <unique> <silent> <Leader>f :call CocActionAsync('format')<CR>

let g:coc_filetype_map = {
  \ 'c.doxygen': 'c',
  \ 'cpp.doxygen': 'cpp',
  \ }
command! LR CocRestart

inoremap <unique> <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
  \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"  function! s:check_back_space() abort
"    let col = col('.') - 1
"    return !col || getline('.')[col - 1] =~# '\s'
"  endfunction

"  inoremap <silent><expr> <Tab>
"    \ pumvisible() ? '<C-n>' :
"    \ <SID>check_back_space() ? '<Tab>' :
"    \ coc#refresh()

" -----------------------------------------------------

" let g:coc_global_extensions = [
"   \ 'coc-eslint8',
"   \ ]

" let g:coc_global_extensions = [
"   \ 'coc-tsserver',
"   \ 'coc-eslint',
"   \ 'coc-prettier',
"   \ ]

" let g:coc_global_extensions = [
"   \ 'coc-pyright',
"   \ ]

" let g:coc_global_extensions = [
"   \ 'coc-pyright',
"   \ 'coc-tsserver',
"   \ 'coc-eslint',
"   \ 'coc-prettier',
"   \ ]
