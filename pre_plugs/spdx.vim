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
  execute 'normal! O' . 'Copyright ' . year . ' ' . holder . '. MIT license.'
  " -- text end --
  normal! o
  normal! k0v$
  set nopaste
endfunction
command! MIT call <SID>apply_mit()
