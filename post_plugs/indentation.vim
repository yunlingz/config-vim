set autoindent

" indent 2 spaces at a time
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=8

" viml continuation
let g:vim_indent_cont = &sw

" python shift
let g:pyindent_open_paren = 4

" cindent
autocmd cmd_once FileType c,cpp setlocal cindent
autocmd cmd_once FileType c,cpp setlocal comments^=:///
" autocmd cmd_once FileType c,cpp let &syntax .= '.doxygen'

" gsg
autocmd cmd_once FileType c,cpp setlocal cinoptions=g1,h1,(0,W4,l1,N-s

autocmd cmd_once FileType scss setlocal iskeyword+=@-@

" -- tab indentation guide line --
" set list lcs=tab:→\ " <- space
" set list lcs=tab:│\ " <- space

" normal examle:
" ------------------
" autocmd cmd_once FileType ruby,yaml setlocal expandtab softtabstop=2 shiftwidth=2 tabstop=8
" autocmd cmd_once FileType make,gitconfig setlocal noexpandtab softtabstop=0 shiftwidth=8 tabstop=8

function! s:space_indent(level, ...)
  for tgt in a:000
    execute 'autocmd cmd_once FileType' tgt 'setlocal'
      \ 'expandtab'
      \ 'softtabstop=' . a:level
      \ 'shiftwidth=' . a:level
      \ 'tabstop=8'
  endfor
endfunction

function! s:tab_indent(level, ...)
  for tgt in a:000
    execute 'autocmd cmd_once FileType' tgt 'setlocal'
      \ 'noexpandtab'
      \ 'softtabstop=0'
      \ 'shiftwidth=' . a:level
      \ 'tabstop=' . a:level
  endfor
endfunction

" -- special indentation --
call <SID>space_indent(4, 'rust', 'python')
" --
call <SID>tab_indent(8, 'make', 'gitconfig')
call <SID>tab_indent(2, 'go')
call <SID>tab_indent(4, 'rust', 'typescript')
