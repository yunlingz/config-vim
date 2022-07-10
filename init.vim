" SPDX-License-Identifier: BSD-2-Clause
"
" Copyright 2022 Yunling Zhu <yunling.zhu@outlook.com>

" ----------------------------------------------------------
set nocompatible
" ----------------------------------------------------------

" global utils
" ----------------------------------------------------------
augroup cmd_once
  autocmd!
augroup END

function! s:load_all(p)
  for f in split(glob(stdpath('config') . '/' . a:p . '/**/*.vim'), '\n')
    exe 'source' f
  endfor
endfunction

" vim-plug
" ----------------------------------------------------------
call <SID>load_all('pre_plugs')

call plug#begin(stdpath('data') . '/plugged')
  call <SID>load_all('plugs')
call plug#end()

call <SID>load_all('post_plugs')

" update
" ----------------------------------------------------------
command! PU PlugUpdate | PlugUpgrade

" function! s:update_plugin()
"   PlugUpdate
"   PlugUpgrade
"   CocUpdate
" endfunction
" command! PU call <SID>update_plugin()
