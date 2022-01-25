" inoremap <C-e> <C-o>A
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" map-space-to-leader: http://vimdoc.sourceforge.net/htmldoc/eval.html#expr-quote
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

nnoremap <silent> <Leader>[ :bp<Bar>sp<Bar>bn<Bar>bd<CR>
nnoremap <Leader>w :w<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

nnoremap <silent> <Leader>- :execute 'vertical resize -' . winwidth(0) / 8<CR>
nnoremap <silent> <Leader>= :execute 'vertical resize +' . winwidth(0) / 7<CR>
