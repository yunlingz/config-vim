setlocal formatprg=lua-format\
  \ --indent-width=2\
  \ --continuation-indent-width=4\
  \ --extra-sep-at-table-end\
  \ --chop-down-table\
  \ --chop-down-kv-table\
  \ --column-limit=100\
  \ --double-quote-to-single-quote\
  \ 2>/dev/null

" mark cursor location as 'c', format entire buffer, go back to 'c'
nnoremap <buffer> <silent> <Leader>f mcgggqG`c
