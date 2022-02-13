Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

let g:lightline = {
  \ 'colorscheme': 'ci_dark',
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' },
  \ 'component': { 'lineinfo': '%3l:%-2v' },
  \ }
let g:lightline.tabline = { 'left': [['buffers']], 'right': [['close']] }
let g:lightline.component_expand = { 'buffers': 'lightline#bufferline#buffers' }
let g:lightline.component_type = { 'buffers': 'tabsel' }
let g:lightline#bufferline#number_map = {
  \ '1': '[1]',
  \ '2': '[2]',
  \ '3': '[3]',
  \ '4': '[4]',
  \ '5': '[5]',
  \ '6': '[6]',
  \ '7': '[7]',
  \ '8': '[8]',
  \ '9': '[9]',
  \ }
let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed = '[No Name]'
nmap <unique> <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <unique> <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <unique> <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <unique> <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <unique> <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <unique> <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <unique> <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <unique> <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <unique> <Leader>9 <Plug>lightline#bufferline#go(9)
