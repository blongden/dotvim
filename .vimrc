set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'michalbachowski/vim-wombat256mod'
Bundle 'Lokaltog/powerline'
Bundle 'SirVer/ultisnips'
Bundle 'tobyS/pdv'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'myusuf3/numbers.vim'
Bundle 'jakobwesthoff/whitespacetrail'
Bundle 'tsaleh/vim-matchit'
Bundle 'spf13/vim-autoclose'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'leshill/vim-json'
Bundle 'pangloss/vim-javascript'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-cucumber'
Bundle 'beyondwords/vim-twig'
Bundle 'spf13/PIV'
Bundle 'othree/html5-syntax.vim'
Bundle 'vim-scripts/HTML-AutoCloseTag'
Bundle 'vim-scripts/indenthtml.vim'
Bundle 'mattn/zencoding-vim'

colorscheme wombat256mod
python from powerline.ext.vim import source_plugin; source_plugin()
set laststatus=2
set ruler
syntax on

let mapleader=","
set history=100
filetype plugin on
filetype indent on

set nobackup nowb noswapfile
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set cursorline
set showtabline=2
set nohls is magic
set ts=4
set listchars=tab:».,eol:¶,trail:-
set list
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab
set number
set encoding=utf-8


let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:snips_author="Ben Longden"

map <leader>t :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif
