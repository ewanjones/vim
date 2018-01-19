set nocompatible              " be iMproved, required
filetype off                  " required

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
" powerline - fancy fonts
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" navigating through text
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
" fuzzy file finder
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
"not working at the moment - vim version issue
"Plugin 'valloric/youcompleteme'

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

:let mapleader = ","

"move lines up and down
inoremap <up> <esc>ddkPi
inoremap <down> <esc>ddpi

" =================
"  VIEWS
" =================

" Set width of explorer
let g:netrw_winsize = 25

" Hide the banner in the explore pane
" let g:netrw_banner = 0

" airline arrows
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" search highlighting
:set hlsearch
:set incsearch

" line numbers
:set number 

" =============
" HIGHLIGHTING
" =============

" Turn on syntax highlighting
syntax on 


