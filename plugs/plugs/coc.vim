" Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Plug 'neoclide/coc.nvim', { 'commit': '9be9ae' }

Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }

Plug 'neoclide/coc-tsserver', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-prettier', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-eslint', { 'do': 'yarn install --frozen-lockfile' }
" Plug 'fannheyward/coc-eslint', { 'branch': 'feat/eslint-8', 'do': 'yarn install --frozen-lockfile' }

nnoremap <silent> gD :call CocActionAsync('jumpDeclaration')<CR>
nnoremap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> gi :call CocActionAsync('jumpImplementation')<CR>

nnoremap <silent> K :call CocActionAsync('doHover')<CR>

nnoremap <silent> <Leader>r :call CocActionAsync('rename')<CR>
nnoremap <silent> <Leader>i :call CocActionAsync('doQuickfix')<CR>
nnoremap <silent> <Leader>f :call CocActionAsync('format')<CR>

let g:coc_filetype_map = {
  \ 'c.doxygen': 'c',
  \ 'cpp.doxygen': 'cpp',
  \ }
command! LR CocRestart

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
