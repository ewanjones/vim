set nocompatible              " be iMproved, required
filetype off                  " required

" set python interpreter to system
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

set expandtab
set tabstop=4
set sw=4


" =================
"  VUNDLE
" =================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" <==========================================>
" PLUGINS

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" navigating through text
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'

" fuzzy file finder
Plugin 'kien/ctrlp.vim'

" syntax checker
Plugin 'scrooloose/syntastic'

" surround text with stuff
Plugin 'tpope/vim-surround'

" git features
Plugin 'tpope/vim-fugitive'
Plugin 'xuyuanp/nerdtree-git-plugin'

" syntax highlighting
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'hdima/python-syntax'

" nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" scrolling
Plugin 'yuttie/comfortable-motion.vim'

" autocomplete
"Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'

" <==========================================>
call vundle#end()

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help

" :PluginList       - lists configured plugins
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" =================
"  KEY MAPPINGS
" =================

let mapleader = ","

"move lines up and down
"inoremap <up> <esc>ddkPi
"inoremap <down> <esc>ddpi

" switch tabs easily
nnoremap <C-h> :tabprev<CR>
nnoremap <C-l> :tabnext<CR>
" close tab
nnoremap <C-q> :tabclose<CR>

"nerdtree settings
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" removes highlighting after search with ESC
nnoremap <esc> :noh<return><esc>

" switch between linter errors
nnoremap <leader>e :SyntasticToggleMode<enter>
nnoremap <leader>l :lnext
nnoremap <leader><leader>l :lprevious

" =================
"  SETTINGS 
" =================
"
" hide welcome message 
set shortmess=I

" Set width of explorer
let g:netrw_winsize = 25

" Hide the banner in the explore pane
" let g:netrw_banner = 0

" airline arrows
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ [ 'x', 'z', 'error', 'warning' ]
\ ]

" syntastic highlighting options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']

" search highlighting
set hlsearch
set incsearch

 "ctrlp settings
let g:ctrlp_working_path_mode = 'ra' 
set wildignore+=*/node_modules/*

" search center screen
set scrolloff=15

" line numbers
set number 

" search case insensitive
set ignorecase

"open nerd tree on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" =============
" HIGHLIGHTING
" =============

" Turn on syntax highlighting
syntax on 


