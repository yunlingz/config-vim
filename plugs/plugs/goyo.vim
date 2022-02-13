Plug 'junegunn/goyo.vim'

let g:goyo_width = 85
let g:goyo_height = '95%'
let g:goyo_linenr = 1
nnoremap <unique> <silent> <Leader>g :Goyo<CR>
" nnoremap <unique> <silent> <Leader>g :call <SID>auto_goyo_width()<CR>
" function! s:auto_goyo_width()
"   if exists('#goyo')
"     Goyo!
"     return
"   endif
"   " --
"   if index(['rust', 'go'], &ft) >= 0
"     Goyo 105
"   elseif index(['python'], &ft) >= 0
"     Goyo 95
"   else
"     Goyo
"   endif
" endfunction
