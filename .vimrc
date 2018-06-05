set shell=bash
set nocompatible               " be iMproved
filetype on                   " required!

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'michalbachowski/vim-wombat256mod'
Plug 'jakobwesthoff/whitespacetrail'
Plug 'spf13/vim-autoclose'
Plug 'vim-scripts/matchit.zip'
Plug 'leshill/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-cucumber'
Plug 'beyondwords/vim-twig'
Plug 'othree/html5-syntax.vim'
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
call plug#end()

filetype plugin on

colorscheme wombat256mod
set laststatus=2
set ruler
syntax on

let mapleader=","
set history=100
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
set backspace=indent,eol,start

let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

autocmd StdinReadPre * let s:std_in=1
nmap =j :%!python -m json.tool<CR>
map ; :Files<CR>
