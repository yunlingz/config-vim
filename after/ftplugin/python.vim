setlocal formatprg=black\ -l\ 80\ -q\ -\ 2>/dev/null

" mark cursor location as 'c', format entire buffer, go back to 'c'
nnoremap <silent> <Leader>f mcgggqG`c
