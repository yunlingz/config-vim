" -- spdx --
function! s:apply_isc()
  set paste
  let year = strftime('%Y')
  let holder = 'Yunling Zhu <yunling.zhu@outlook.com>'
  1
  let first_line = getline(1)
  if first_line =~ '\m^#!' || first_line == "'use strict';" || first_line == '"use strict";'
    normal! o
    normal! o
  endif
  " -- text begin --
  execute 'normal! O' . 'Copyright (c) ' . year . ' ' . holder
  execute 'normal! o'
  execute 'normal! o' . 'Permission to use, copy, modify, and distribute this software for any'
  execute 'normal! o' . 'purpose with or without fee is hereby granted, provided that the above'
  execute 'normal! o' . 'copyright notice and this permission notice appear in all copies.'
  execute 'normal! o'
  execute 'normal! o' . 'THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES'
  execute 'normal! o' . 'WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF'
  execute 'normal! o' . 'MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR'
  execute 'normal! o' . 'ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES'
  execute 'normal! o' . 'WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN'
  execute 'normal! o' . 'ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF'
  execute 'normal! o' . 'OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.'
  " -- text end --
  normal! o
  normal! 13k0v12j$
  set nopaste
endfunction
command! ISC call <SID>apply_isc()
