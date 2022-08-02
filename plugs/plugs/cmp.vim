" lsp
Plug 'neovim/nvim-lspconfig'
" cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" vsnip
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'ray-x/lsp_signature.nvim'

" imap <unique> <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'    : '<C-j>'
" smap <unique> <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'    : '<C-j>'

" imap <unique> <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<Tab>'
" smap <unique> <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<Tab>'
" imap <unique> <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<Plug>delimitMateS-Tab'
" smap <unique> <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<Plug>delimitMateS-Tab'
