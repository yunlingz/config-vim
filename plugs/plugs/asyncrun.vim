Plug 'skywind3000/asyncrun.vim'

let g:asyncrun_open = 8

command! -nargs=* -complete=file AR AsyncRun<q-args>
