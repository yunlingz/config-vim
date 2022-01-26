Plug 'sbdchd/neoformat'

let g:neoformat_json_my_jsontool = {
  \ 'exe': 'python3',
  \ 'args': ['-m', 'json.tool', '--indent', '2'],
  \ }

let g:neoformat_enabled_json = ['my_jsontool']


let g:neoformat_python_my_black = {
  \ 'exe': 'black',
  \ 'args': ['-l', '80', '-q', '-'],
  \ 'stdin': 1,
  \ }

let g:neoformat_enabled_python = ['my_black']


let g:neoformat_lua_my_luaformat = {
  \ 'exe': 'lua-format',
  \ 'args': [
    \ '--indent-width=2',
    \ '--continuation-indent-width=4',
    \ '--extra-sep-at-table-end',
    \ '--chop-down-table',
    \ '--chop-down-kv-table',
    \ '--column-limit=100',
    \ '--double-quote-to-single-quote',
    \ '--no-keep-simple-control-block-one-line',
    \ '--no-keep-simple-function-one-line',
    \ '--column-table-limit=80',
    \ ],
  \ }

let g:neoformat_enabled_lua = ['my_luaformat']


autocmd cmd_once FileType
  \ json,python,lua
  \ nnoremap <buffer><silent><unique> <Leader>f :Neoformat<CR>
