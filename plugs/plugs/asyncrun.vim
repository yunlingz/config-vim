Plug 'skywind3000/asyncrun.vim'

let g:asyncrun_open = 8

command! -bang -nargs=+ -range=0 -complete=file AR
  \ call asyncrun#run('<bang>', '', <q-args>, <count>, <line1>, <line2>)
