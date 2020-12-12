" ==================
" Tablel of Content
" ==================
" 1. General settings
" 2. Plugins vundle
" 3. File settings
" 4. Maps
" 5. True Color
" 6. Default Setup
" 7. Airline config

" ================
" General settings
" ================

set nocompatible	"Disable vi compatibility
set history=1000	"Increase history size

" ================
" Plugins vundle
" ================

filetype off	"Required by vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin list

Plugin 'VundleVim/Vundle.vim'	"Self vundle
Plugin 'scrooloose/nerdtree'	"NERDTree
Plugin 'valloric/youcompleteme' "YouCompleteMe
Plugin 'majutsushi/tagbar'	"Tagbar
Plugin 'vim-airline/vim-airline' 
                                "Airline 
Plugin 'vim-airline/vim-airline-themes'
                                "Themes for airline
Plugin 'nathanaelkane/vim-indent-guides'
                                "Highlight indent
Plugin 'ap/vim-buftabline'      "Buftabline
Plugin 'tpope/vim-fugitive'     "Fugitive
Plugin 'airblade/vim-gitgutter' "Git gutter
"Plugin 'SirVer/ultisnips'       "Ultisnips
"Plugin 'honza/vim-snippets'     "Snippets
Plugin 'ryanoasis/vim-devicons' "Devicons

" Color schemes
Plugin 'sonph/onehalf',{'rtp':'vim/'}
                                "Onehalf
Plugin 'tomasr/molokai'         "Molokai
Plugin 'dracula/vim'            "Dracula
Plugin 'rakr/vim-one'           "One

call vundle#end() 
filetype plugin indent on " Required

" ==============
" File settings
" ==============

set noswapfile		"Backup
set nobackup

" Indenting
set autoindent		"Autoindent On
set expandtab		"Excapd tab
set shiftwidth=4	"Spaces for autoindent
set softtabstop=4	"Remove a tab
set encoding=utf-8      "Allways use utf-8
set backspace=indent,eol,start  "Backspace

" Specific Fyletype Settings
autocmd FileType html,css setlocal shiftwidth=2 softtabstop=2
    " Only two spaces for web files

" Extras
set colorcolumn=80	"Column in 80 position
set showmode		"Always show the mode
set laststatus=2	"Show the files
set wildmenu		"Show command
set ruler		"Show the rule
set number		"Show number
set relativenumber	"Show the differences of number
set cursorline		"Make a line
hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE
                        "Decorete the Cursor line
set cursorcolumn	"Make a line
set showmatch		"Higligth the parentesis

" =============
" Maps
" =============
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-B> :NERDTree

set hidden
nnoremap <C-N> :bprev<CR>
nnoremap <C-M> :bnext<CR>
" :bd!  ----> close a buffer 

" =============
" True Color
" =============
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

" ==============
" Default Setup
" ==============

colorscheme molokai              "Default Colorscheme
let g:airline_theme = 'badwolf' "Default Airline

" ===============
" Airline config
" ===============

let g:airline_powerline_fonts = 1   "Enable the arrows

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Unicode symbols

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" Powerline symbols

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
