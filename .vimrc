" Use Vim settings rather than Vi settings
set nocompatible

" Load pathogen plugins in ~/.vim/bundle
call pathogen#infect()

" enable go plugins
set rtp+=/usr/local/go/misc/vim

filetype plugin indent on

" Enable syntax highlighting.
syntax on


" Automatically indent when adding a curly bracket, etc.
set smartindent
set autoindent

" Tabs should be converted to a group of 2 spaces.
" This is the official Python convention
" (http://www.python.org/dev/peps/pep-0008/)
" I didn't find a good reason to not use it everywhere.
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" set smarttab

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set shell=bash

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=8

" Use UTF-8.
set encoding=utf-8

" Show line number, cursor position.
set ruler
set number

" Display incomplete commands.
set showcmd

" Search as you type.
set incsearch

" Highlight search matches
set hls

" Ignore case when searching.
set ignorecase

" Show editing mode
set showmode

" Error bells are displayed visually.
set visualbell

set nowrap
set linebreak

" Folds
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Font settings
set guifont=Monaco\ 17

" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\
set statusline+=%f\
set statusline+=%h%m%r%w
set statusline+=\[%{strlen(&ft)?&ft:'none'}]
set statusline+=%=
set statusline+=0x%-8B
set statusline+=%-14(%l,%c%V%)
set statusline+=%<%P


" Color scheme
set t_Co=256
set background=dark
colorscheme solarized

" Map ctrl-, to remove all trailing white space
map <C-p> :%s/\s\+$//<CR>

" Map jj to get esc in insert mode for quick exit
imap jj <ESC>

" Insert new line without leaving command mode
map <C-J> i<CR><Esc>k$

" Turn of swap files
set noswapfile
set nobackup
set nowb

" tab navvigation like firefox
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>

set pastetoggle=<C-p>

let g:molokai_original=1

let mapleader = "\\"
map <Leader>n :NERDTreeToggle<CR> 

" Tabularize mappings
" - With Space separator (e.g. Rails migratsion
nmap <Leader>a<Space> :Tabularize /\ \zs<CR>
vmap <Leader>a<Space> :Tabularize /\ \zs<CR>
nmap <Leader>a, :Tabularize /,\zs<CR>
vmap <Leader>a, :Tabularize /,\zs<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Slime
let g:slime_target = "tmux"
