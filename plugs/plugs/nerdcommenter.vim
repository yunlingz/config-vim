Plug 'preservim/nerdcommenter'

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDCustomDelimiters = {
  \ 'c': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' },
  \ 'gitconfig': { 'left': '#' },
  \ 'json': { 'left': '//' },
  \ 'python': { 'left': '#' },
  \ }
