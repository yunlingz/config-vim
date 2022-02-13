Plug 'justinmk/vim-sneak'

nmap <unique> <silent><expr> n sneak#is_sneaking() ? '<Plug>Sneak_;' : 'n'
nmap <unique> <silent><expr> p sneak#is_sneaking() ? '<Plug>Sneak_,' : 'p'
