function! tab_guide#render() abort
  set list lcs=tab:│\ " <- space
  highlight! NonText guifg=#454d56 guibg=NONE gui=NONE
endfunction
