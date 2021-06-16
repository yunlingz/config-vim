autocmd cmd_once BufNewFile,BufRead *.cc,*.hh,*.h setlocal filetype=cpp
autocmd cmd_once BufNewFile,BufRead .clang-format,.clang-tidy setlocal filetype=yaml
autocmd cmd_once BufNewFile,BufRead *.vs,*.fs setlocal filetype=glsl
autocmd cmd_once BufNewFile,BufRead *.rkt,*.rktl setlocal filetype=scheme
autocmd cmd_once BufNewFile,BufRead .gitignore setlocal filetype=conf
