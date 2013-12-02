set clipboard=unnamed
filetype plugin on

call pathogen#runtime_append_all_bundles()  " adding pathogen to vimrc
call pathogen#helptags()

set nocompatible                    " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     	" display incomplete commands
filetype plugin indent on       	" load file type plugins + indentation
set colorcolumn=120
set number

"" Whitespace
set nowrap                          " don't wrap lines
set tabstop=2 shiftwidth=2          " a tab is two spaces (or set this to 4)
set expandtab                       " use spaces, not tabs (optional)
set backspace=indent,eol,start      " backspace through everything in insert mode

runtime macros/matchit.vim

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " searches are case insensitive...
set smartcase                       " ... unless they contain at least one capital letter

let g:gitgutter_enabled = 0

"" Plugins
nmap <F6> :TagbarToggle<CR>         " mapping gt to TagbarToggle
nmap <F2> :NERDTreeToggle<CR>       " mapping gn to NERDTreeToggle
nmap <F4> :TlistOpen<CR>
nmap <F5> :ToggleGitGutter<CR>

"" Mappings
:vnoremap . :norm.<CR>

"" Color Scheme
colorscheme xoria256

"" NERDTree Specific
let NERDTreeIgnore=['\.vim$','\*.pyc$','\.git[[dir]]']

"" Pymode
call pymode#Default("g:pymode_folding", 0)  "NO MORE FOLDING
call pymode#Default("g:pymode_utils_whitespaces", 1)

"" File Extensions
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.coffee.erb set filetype=coffee
autocmd BufRead,BufNewFile *htm.erb set filetype=html

hi ColorColumn ctermbg=Black guibg=Black
hi CursorLine guibg=#9C9C9C

" " Enable fancy mode 
let g:Powerline_symbols = 'fancy'   " Powerline


let g:ctrlp_custom_ignore = {
  \ 'dir':  'migrate$',
  \ 'file': 'tags$',
  \ }

"" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

