set nocompatible

" Enable syntax highlighting.
syntax on

filetype plugin indent on

" Automatically indent when adding a curly bracket, etc.
set smartindent
set autoindent

" Tabs should be converted to a group of 4 spaces.
" This is the official Python convention
" (http://www.python.org/dev/peps/pep-0008/)
" I didn't find a good reason to not use it everywhere.
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" set smarttab

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=999

" Use UTF-8.
set encoding=utf-8

" Show line number, cursor position.
set ruler
set number

" Display incomplete commands.
set showcmd

" To insert timestamp, press F3.
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" Search as you type.
set incsearch

" Ignore case when searching.
set ignorecase

" Show editing mode
set showmode

" Error bells are displayed visually.
set visualbell

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

" Taglist setup
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" Color scheme
set t_Co=256
set background=dark
colorscheme molokai

" Map ctrl-, to remove all trailing white space
map <C-p> :%s/\s\+$//<CR>

" Map jj to get esc in insert mode for quick exit
imap jj <ESC>

" Insert new line without leaving command mode
map <C-J> i<CR><Esc>k$

" Keep vim files in a sane place
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" tab navvigation like firefox
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>

set pastetoggle=<C-p>

let g:molokai_original=1
