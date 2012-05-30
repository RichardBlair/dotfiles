call pathogen#runtime_append_all_bundles()  " adding pathogen to vimrc
call pathogen#helptags()

set nocompatible                    " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     	" display incomplete commands
filetype plugin indent on       	" load file type plugins + indentation
set colorcolumn=80
set number

"" Whitespace
set nowrap                          " don't wrap lines
set tabstop=4 shiftwidth=4          " a tab is two spaces (or set this to 4)
set expandtab                       " use spaces, not tabs (optional)
set backspace=indent,eol,start      " backspace through everything in insert mode

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " searches are case insensitive...
set smartcase                       " ... unless they contain at least one capital letter

<<<<<<< HEAD
"" Plugins
nmap <F8> :TagbarToggle<CR>         " mapping gt to TagbarToggle
nmap <F2> :NERDTreeToggle<CR>       " mapping gn to NERDTreeToggle

"" Color Scheme
colorscheme xoria256

"" NERDTree Specific
let NERDTreeIgnore=['\.vim$','\*.pyc$','\.git[[dir]]']

"" Pymode
call pymode#Default("g:pymode_folding", 0)  "NO MORE FOLDING
call pymode#Default("g:pymode_utils_whitespaces", 1)

hi CursorLine guibg=#9C9C9C

" " Enable fancy mode 
let g:Powerline_symbols = 'fancy'   " Powerline
