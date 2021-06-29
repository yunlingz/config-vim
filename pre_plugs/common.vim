" custom settings
set mouse=a
set number
set laststatus=2
set encoding=utf-8
set backspace=indent,eol,start
set whichwrap+=<,>,h,l,[,]
set cursorline
set showtabline=2
set noshowmode
set fillchars+=vert:│
set shortmess=I
set magic
if has('clipboard')
  if has('mac')
    set clipboard+=unnamed
  elseif has('unix')
    set clipboard+=unnamedplus
  endif
endif

" for autocomplete engines
set hidden
set shortmess+=c
set signcolumn=yes
set completeopt=noinsert,menuone,noselect

" disable beeping
set noerrorbells visualbell t_vb=
autocmd cmd_once GUIEnter * set visualbell t_vb=

" no automatically wrap
set textwidth=0
set wrapmargin=0
set wrap
set linebreak
set nolist

if has("gui_running")
  " simple gui
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
  set guioptions-=e
  " disable all blinking
  set guicursor+=a:blinkon0
  set guifont=SF\ Mono:h12
  " set linespace=4
  set lines=24 columns=80
endif

" performance config
set timeout ttimeout timeoutlen=1000 ttimeoutlen=0
set lazyredraw
set updatetime=100

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" ignore
set wildignore+=*~,*.swp,*.o,*.a,*.so,*.pyc,*.zip
set wildignore+=.DS_Store
set wildignore+=*/.git/*
set wildignore+=*/.hg/*
set wildignore+=*/.svn/*
set wildignore+=*/CVS/*
set wildignore+=*/.vscode/*
set wildignore+=*/tmp/*
set wildignore+=*/venv/*
set wildignore+=*/__pycache__/*
set wildignore+=*/.mypy_cache/*
set wildignore+=*/node_modules/*
set wildignore+=*/build/*
set wildignore+=*/target/*
set wildignore+=*/vendor/*

" cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
