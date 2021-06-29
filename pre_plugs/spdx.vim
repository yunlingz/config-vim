" -- spdx --
function! s:apply_mit()
  set paste
  let year = strftime('%Y')
  let holder = 'Zhu Yun-ling <yunling.zhu@outlook.com>'
  1
  if getline(1) =~ '\m^#!'
    normal! o
    normal! o
  endif
  " -- text begin --
  execute 'normal! O' . 'SPDX-License-Identifier: MIT'
  execute 'normal! o'
  execute 'normal! o' . 'Copyright ' . year . ' ' . holder
  " -- text end --
  normal! o
  normal! 3k0v2j$
  set nopaste
endfunction
command! MIT call <SID>apply_mit()
