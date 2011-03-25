
" Improved
"

set nocompatible

"
" Enable plugins, indent and syntax
"

filetype plugin on
filetype indent on
syntax on
set autoindent
set smartindent

"
" Encoding
"

"set fencs=utf-8
"set enc=utf-8
"set termencoding=utf-8

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

" Color scheme
<<<<<<< HEAD
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=green
colorscheme desert  " torte koehler desert
=======
"colorscheme molokai
>>>>>>> LBNF added
set cursorline
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set nowrap
set number
set guifont=Inconsolata\ 10
set showmatch
set scrolloff=3
set foldenable
hi Normal guibg=#030303

" MATCH

" Highlight trailing whitespace while cursor not at row end
" Highlight all tabs
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Allow for cursor beyond last char
set virtualedit=onemore

" Spell checking
"set spell

" Backup settings
set backup
set backupdir=$HOME/.vimbackup//
set directory=$HOME/.vimswap//
set viewdir=$HOME/.vimviews//

" Shift fixes
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe

set wildmode=list:longest:full

map <F2> :NERDTreeToggle<CR>

" SCROLL
" default = no scroll

set guioptions -=r
set guioptions -=l
set guioptions -=R
set guioptions -=L

" TOOLBAR
" default = no toolbar
" Show/hide Ctrl+F2

set guioptions -=T
set guioptions -=m
map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
                         \set guioptions-=T <Bar>
                         \set guioptions-=m <bar>
                    \else <Bar>
                         \set guioptions+=T <Bar>
                         \set guioptions+=m <Bar>
                      \endif<CR>

" HASKELL
"autocmd BufEnter *.hs compiler ghc
"let g:haddock_browser = "/usr/bin/google-chrome"
"let g:ghc = "/usr/bin/ghc"

" LBNF
autocmd BufReadPre,BufNewFile *.cf set ft=lbnf

"function! SuperCleverTab()
"    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
"        return "\<Tab>"
"    else
"        if &omnifunc != ''
"            return "\<C-X>\<C-O>"
"        elseif &dictionary != ''
"            return "\<C-K>"
"        else
"            return "\<C-N>"
"        endif
"    endif
"endfunction
"
"inoremap <Tab> <C-R>=SuperCleverTab()<cr>
