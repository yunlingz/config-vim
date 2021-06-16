" remove all trailing whitespace before saving
autocmd cmd_once BufWritePre * if index(['markdown'], &ft) == -1 | %s/\s\+$//e | endif
