Plug 'mbbill/undotree'

" set undofile
"
" set backup
" set writebackup
"
" set swapfile

" -- nvim already group these dirs under seperated paths --

function! s:mkdir_if_not_exists(path)
  if !isdirectory(a:path)
    call mkdir(a:path, 'p', 0700)
  endif
endfunction

function! s:create_tmp_dirs()
  let root_dir = expand('$HOME/.nvim_state')
  let undo_root = root_dir .. '/undo'
  let backup_root = root_dir .. '/backup'
  let swapfile_root = root_dir .. '/swap'

  call <SID>mkdir_if_not_exists(undo_root)
  call <SID>mkdir_if_not_exists(backup_root)
  call <SID>mkdir_if_not_exists(swapfile_root)

  let &undodir = undo_root .. '//'
  set undofile

  let &backupdir = backup_root .. '//'
  set backup
  set writebackup

  let &dir = swapfile_root .. '//'
  set swapfile
endfunction

if has('unix')
  call <SID>create_tmp_dirs()
endif
