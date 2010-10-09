
" Improved
"

set nocompatible

"
" Enable plugins, indent and syntax
"

filetype plugin on
filetype indent on
syntax on

"
" Encoding
"

set fencs=utf-8
set enc=utf-8
set termencoding=utf-8

"
" Interaction
"

set mouse=a
set hlsearch
set incsearch
set splitbelow
set splitright
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

"
" User interface
"

colorscheme ir_black
set cursorline
set ruler
set nowrap
set number
set guifont=Inconsolata\ 9

" Highlight trailing whitespace while cursor not at row end
" Highlight all tabs
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\|\t/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\|\t/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|\t/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\|\t/
autocmd BufWinLeave * call clearmatches()
