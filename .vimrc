" =================
"  VUNDLE
" =================

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" <==========================================>

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" powerline - fancy fonts
"Plugin 'powerline/powerline'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" easymotion
Plugin 'easymotion/vim-easymotion'

" <==========================================>
call vundle#end()

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" =================
"  KEY MAPPINGS
" =================

ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right <Nop>


" =================
"  VIEWS
" =================

" EXPLORER
" ==========

" Open new files in a horizontal split
let g:netrw_browse_split = 2

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

" HIGHLIGHTING
" =============

" Turn on syntax highlighting
syntax on 
