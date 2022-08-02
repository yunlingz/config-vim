Plug 'Raimondi/delimitMate'

let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
autocmd cmd_once FileType rust let b:delimitMate_matchpairs = '(:),{:},[:]'
autocmd cmd_once FileType markdown let b:delimitMate_nesting_quotes = ['`']

" https://github.com/tpope/vim-endwise/issues/133
if empty(maparg('<CR>', 'i'))
  imap <CR> <Plug>delimitMateCR
endif

" endwise must be loaded after delimitmate
Plug 'tpope/vim-endwise'
