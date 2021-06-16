Plug 'justinmk/vim-sneak'

nmap <silent><expr> n sneak#is_sneaking() ? '<Plug>Sneak_;' : 'n'
nmap <silent><expr> p sneak#is_sneaking() ? '<Plug>Sneak_,' : 'p'
