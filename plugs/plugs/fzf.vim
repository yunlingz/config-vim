Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

nnoremap <unique> <silent> <C-p> :Files<Cr>
nnoremap <unique> <silent> <C-g> :Rg<Cr>

" use rg
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set grepformat=%f:%l:%c:%m

function! s:ripgrep_fzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call <SID>ripgrep_fzf(<q-args>, <bang>0)
