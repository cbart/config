
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

" Color scheme
colorscheme molokai
set cursorline
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set nowrap
set number
set guifont=Inconsolata\ 9
set showmatch
set scrolloff=3
set foldenable

" Highlight trailing whitespace while cursor not at row end
" Highlight all tabs
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\|\t/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\|\t/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|\t/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\|\t/
autocmd BufWinLeave * call clearmatches()

" Allow for cursor beyond last char
set virtualedit=onemore

" Spell checking
set spell

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
