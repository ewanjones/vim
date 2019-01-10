filetype off                  " required

" set python interpreter to system
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

set expandtab
set tabstop=4
set sw=4

set colorcolumn=99
set timeoutlen=400

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

" NAVIGATION
" ==========

" vim-airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" navigating through text
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
" fuzzy file finder
Plugin 'kien/ctrlp.vim'
" nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" scrolling
Plugin 'yuttie/comfortable-motion.vim'

" text objects
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-user'      " required for above
Plugin 'bps/vim-textobj-python'

" repeating actions
Plugin 'tpope/vim-repeat'

" git features
Plugin 'tpope/vim-fugitive'              " git features
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'         " git diff in the sidebar
Plugin 'gregsexton/gitv'

" syntax 
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'hdima/python-syntax'

" markdown 
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" syntax checkers
Plugin 'scrooloose/syntastic'
Plugin 'gcorne/vim-sass-lint'

" code folding
Plugin 'tmhedberg/SimpylFold'

" surround text with stuff
Plugin 'tpope/vim-surround'
Plugin 'andrewradev/splitjoin.vim'      " split lines nicely


" autocomplete
"Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'


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

" no arrow keys
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

" switch tabs easily
nnoremap <C-h> :tabprev<CR>
nnoremap <C-l> :tabnext<CR>

" remove search highlighting
nnoremap <leader>h :noh<CR>

" Search codebase for word under cursor (v useful)
nnoremap gw :grep <cword> .  <CR>

"nerdtree settings
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" removes highlighting after search 
nnoremap <C-q> :noh<return><esc>

" switch between linter errors
nnoremap <leader>e :SyntasticToggleMode<enter>
nnoremap <leader>l :lnext<CR>
nnoremap <leader><leader>l :lprevious<CR>

"switching between :grep results
nmap <silent> <RIGHT> :cnext<CR>
nmap <silent> <LEFT> :cprev<CR>

" COMMAND ALIASES
cnoreabbrev rws %s/\s\+$//e

" =================
"  SETTINGS 
" =================
"
" hide welcome message 
set shortmess=Ia

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

" syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake_args = '--config src/setup.cfg'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"you complete me
"let g:ycm_path_to_python_interpreter = '/usr/bin/python'

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_scss_checkers=["sasslint"]

" search highlighting
set hlsearch
set incsearch

" markdown plugin settings
let g:vim_markdown_folding_disabled = 1
set conceallevel=2

" simpylfold
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0

"nerd commenter 
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDDefaultAlign = 'left'

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx'

" allow insert mode backspace
set backspace=indent,eol,start

 "ctrlp settings
let g:ctrlp_working_path_mode = 'ra' 
set wildignore+=*/node_modules/*,*.swp,*.pyc
"lets ctrlp read gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

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

" =============
" SCRIPTS
" =============

" set silver_searcher as the main grep searching
if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --column
    set grepformat=%f:%l:%c%m
endif
