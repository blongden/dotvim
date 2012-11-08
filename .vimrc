filetype on
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" mapleader
let mapleader=","

set hidden

" No Vi Compat
set nocompatible

" Remember 100 cmds
set history=100

" Enable filetype specific plugins & indents
filetype plugin on
filetype indent on

" "sudo" save:
:cmap w!! w !sudo tee % >/dev/null

" Load a tag file
" Loads a tag file from ~/.vim.tags/, based on the argument provided. The
" command "Ltag"" is mapped to this function.
:function! LoadTags(file)
:   let tagspath = $HOME . "/.vim.tags/" . a:file
:   let tagcommand = 'set tags+=' . tagspath
:   execute tagcommand
:endfunction
:command! -nargs=1 Ltag :call LoadTags("<args>")

" Highlight Searches
:set highlight=lub
:map <Leader>s :set hlsearch<CR>
:map <Leader>S :set nohlsearch<CR>
:set incsearch

" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!php -l %<CR>

:map! jj <esc>
imap <C-P> <ESC>:call PhpDoc()<CR>i

" Mouse mode ALL
set mousemodel=extend

" We dont want no stinking swaps or backups
set nobackup nowb noswapfile

" Ruler
set laststatus=2
set ruler

" Line numbers
set number

" 2 lines for command
set cmdheight=2

" Yeeehawwww
set wildmenu

" Sensible backspace-age
set backspace=eol,start,indent

" Allow <Left>, <Right>, h & l to wrap
set whichwrap+=<,>,h,l

" Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Highlight current line
set cursorline

" Use tabs for buffer switches
set switchbuf=usetab

" Always show tab line
set showtabline=2

" Default to dark color
set background=dark

" No search highlight, incremental search and magic regex search
set nohls is magic

" Required to make mouse wheel work in screen but breaks copy / paste
" set ttymouse=xterm

" Look 200 lines back for start of syntax
syntax sync minlines=100

set t_Co=256
set bg=dark
colorscheme wombat256mod

" project options
let g:proj_flags="imstvcg"

" Enable syntax and filetype specifics 
syntax enable
filetype plugin on

set ts=4

" make whitespace visible
set listchars=tab:».,eol:¶,trail:-
set list

"Switch to last edited file
map <silent> <Leader>f <C-^>

" Ctrl-. for next buffer
map <M-l> :bn<CR>

" Ctrl, for prev buffer
map <M-h> :bp<CR>

"Tags
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1
"let Tlist_File_Fold_Auto_Close = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
nnoremap <leader> t :TlistToggle<CR>

au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.tac set filetype=python
au BufRead,BufNewFile *.twig set filetype=jinja
au BufRead,BufNewFile *.ss set filetype=html

set nowrap

set encoding=utf-8

" NERDTree options
:let NERDChristmasTree=1
:let NERDTreeCaseSensitiveSort=1
:let NERDTreeChDirMode=2
:let NERDTreeBookmarksFile = $HOME . "/.vim/NERDTreeBookmarks"
:let NERDTreeShowBookmarks=1
:let NERDTreeShowHidden=1
:let NERDTreeQuitOnOpen=1
:map <Leader>n :NERDTree<CR>

" snipMate options
let g:snips_author = "Ben Longden"

au BufNewFile,BufRead *.xml set makeprg=xml\ val\ %
au BufWritePost *.xml :make

au BufRead,BufNewFile *.markdown set wrap linebreak nolist

set tabstop=4
set shiftwidth=4
set smartindent
set expandtab

let g:Powerline_symbols = 'fancy'

function! PresentationMode()
    colorscheme solarized
    set bg=light
    set nolist
endfunction
nmap <leader>PR :call PresentationMode()<cr>
