" Copyright 2021 Zhu Yun-ling <yunling.zhu@outlook.com>. MIT license.

" ----------------------------------------------------------
set nocompatible
" ----------------------------------------------------------

" global utils
" ----------------------------------------------------------
augroup cmd_once
  autocmd!
augroup END

function! s:load_all(p)
  for f in split(glob('~/.vim/' . a:p . '/**/*.vim'), '\n')
    exe 'source' f
  endfor
endfunction

" vim-plug
" ----------------------------------------------------------
call <SID>load_all('pre_plugs')

call plug#begin('~/.vim_plugged')
  call <SID>load_all('plugs')
call plug#end()

call <SID>load_all('post_plugs')

" update
" ----------------------------------------------------------
" command! PU PlugUpdate | PlugUpgrade

function! s:update_plugin()
  PlugUpdate
  PlugUpgrade
  CocUpdate
endfunction
command! PU call <SID>update_plugin()
