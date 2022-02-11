Plug 'preservim/tagbar', { 'on': 'TagbarToggle' }

nnoremap <silent> <F8> :TagbarToggle<CR>

let g:tagbar_type_typescriptreact = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'n:namespaces:0:1',
    \ 'i:interfaces:0:1',
    \ 'g:enums:0:1',
    \ 'e:enumerations:0:1',
    \ 'c:classes:0:1',
    \ 'C:constants:0:1',
    \ 'f:functions:0:1',
    \ 'p:properties:0:1',
    \ 'v:variables:0:1',
    \ 'm:methods:0:1',
    \ ],
  \ 'sro': '.',
  \ 'kind2scope' : {
    \ 'c': 'class',
    \ 'i': 'interface',
    \ 'g': 'enum',
    \ 'n': 'namespace',
    \ },
  \ 'scope2kind' : {
    \ 'class'     : 'c',
    \ 'interface' : 'i',
    \ 'enum'      : 'g',
    \ 'namespace' : 'n',
    \ },
  \ }
