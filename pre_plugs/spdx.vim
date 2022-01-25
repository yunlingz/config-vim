" -- spdx --
function! s:apply_bsd()
  set paste
  let year = strftime('%Y')
  let holder = 'Yunling Zhu <yunling.zhu@outlook.com>'
  1
  if getline(1) =~ '\m^#!'
    normal! o
    normal! o
  endif
  " -- text begin --
  execute 'normal! O' . 'SPDX-License-Identifier: BSD-2-Clause'
  execute 'normal! o'
  execute 'normal! o' . 'Copyright ' . year . ' ' . holder
  " -- text end --
  normal! o
  normal! 3k0v2j$
  set nopaste
endfunction
command! BSD call <SID>apply_bsd()
