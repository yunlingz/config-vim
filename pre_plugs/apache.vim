" -- spdx --
function! s:apply_apache()
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
  execute 'normal! O' . 'Copyright ' . year . ' ' . holder
  execute 'normal! o'
  execute 'normal! o' . 'Licensed under the Apache License, Version 2.0 (the "License");'
  execute 'normal! o' . 'you may not use this file except in compliance with the License.'
  execute 'normal! o' . 'You may obtain a copy of the License at'
  execute 'normal! o'
  execute 'normal! o' . 'http://www.apache.org/licenses/LICENSE-2.0'
  execute 'normal! o'
  execute 'normal! o' . 'Unless required by applicable law or agreed to in writing, software'
  execute 'normal! o' . 'distributed under the License is distributed on an "AS IS" BASIS,'
  execute 'normal! o' . 'WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.'
  execute 'normal! o' . 'See the License for the specific language governing permissions and'
  execute 'normal! o' . 'limitations under the License.'
  " -- text end --
  normal! o
  normal! 13k0v12j$
  set nopaste
endfunction
command! APL call <SID>apply_apache()
