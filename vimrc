set nocompatible       " no vi compatibility
set encoding=utf-8

" indentation
set expandtab    " insert spaces when tab key is pressed
set tabstop=4    " 1 tab == 2 spaces
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " 1 indentation == 2 spaces
"set backspace=4  " start, indent
set nowrap       " don't wrap text

let java_highlight_functions = 1
let java_highlight_all = 1
" If you are trying this at runtime, you need to reload the syntax file
set filetype=java

" Some more highlights, in addition to those suggested by cmcginty
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" searching and replacing
"set nohls      " turn off highlight on search
set hlsearch
"set incsearch  " but highlight inline search
set gdefault   " global substitution by default

set nobackup nowritebackup  " do not backup files
set noswapfile              " also do not create swap files
set number                  " show line numbers

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" display incomplete commands
set showcmd
" Enable highlighting for syntax
syntax on
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" If a file is changed outside of vim, automatically reload it without asking
set autoread

"set autoindent

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

