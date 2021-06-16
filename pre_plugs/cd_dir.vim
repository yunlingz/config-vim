let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
for f in argv()
  if isdirectory(f)
    execute 'cd '. f
    bp|sp|bn|bd
  endif
endfor
