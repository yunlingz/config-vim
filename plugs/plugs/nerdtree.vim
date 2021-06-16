Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

autocmd cmd_once BufEnter * nested
  \ if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
  \ q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeShowHidden = 1
let g:NERDTreeRespectWildIgnore = 1
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
