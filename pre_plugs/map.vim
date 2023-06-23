inoremap <unique> <C-e> <C-o>A

nnoremap <unique> ; :
nnoremap <unique> : ;
vnoremap <unique> ; :
vnoremap <unique> : ;

" map-space-to-leader: http://vimdoc.sourceforge.net/htmldoc/eval.html#expr-quote
nnoremap <unique> <Space> <Nop>
let mapleader = "\<Space>"

nnoremap <unique> <silent> <Leader>[ :bp<Bar>sp<Bar>bn<Bar>bd<CR>
nnoremap <unique> <Leader>w :w<CR>
nnoremap <unique> <C-j> <C-w>j
nnoremap <unique> <C-k> <C-w>k
nunmap <C-l>
nnoremap <unique> <C-l> <C-w>l
nnoremap <unique> <C-h> <C-w>h

nnoremap <unique> <silent> <Leader>- :execute 'vertical resize -' . winwidth(0) / 8<CR>
nnoremap <unique> <silent> <Leader>= :execute 'vertical resize +' . winwidth(0) / 7<CR>
