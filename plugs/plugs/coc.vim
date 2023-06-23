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

" nnoremap <unique> <silent> <Leader>f :call CocActionAsync('format')<CR>

function! s:format()
  if index(['python', 'lua'], &ft) >= 0
    :Neoformat
    return
  endif

  if CocHasProvider('format')
    call CocActionAsync('format')
  endif
endfunction

nnoremap <unique> <silent> <Leader>f :call <SID>format()<CR>

let g:coc_filetype_map = {
  \ 'c.doxygen': 'c',
  \ 'cpp.doxygen': 'cpp',
  \ }
command! LR CocRestart

inoremap <unique> <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1) :
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <unique> <silent><expr> <CR>
  \ coc#pum#visible() ? coc#pum#confirm() :
  \ "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

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
