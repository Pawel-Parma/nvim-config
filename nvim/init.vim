set nocompatible              " disable compatibility to old-time vi

set mouse=                    " disable mouse

set rnu 	                  " set relative line numbering
set number                    " set line number (instead of 0)
set cursorline                " highlight current cursorline

syntax on               	  " enable syntax highliting
" set clipboard=unnamedplus   " use system clipboard
  
set ignorecase                " case insensitive 
set showmatch                 " show matching 
set hlsearch                  " enable highlight search 
set incsearch                 " enable incremental search
set wildmode=longest,list     " get bash-like (longest first) tab completions
 
set tabstop=4                 " number of columns occupied by a tab 
set softtabstop=4             " see multiple spaces as tabstops so <BS> does the right thing
set expandtab                 " converts tabs to white space
set shiftwidth=4              " width for autoindents
set autoindent                " indent a new line the same amount as the line just typed
filetype plugin indent on     " allow auto-indenting depending on file type

filetype plugin on            " enable specific file types plugins

" set undofile                " Enable persistent undo
" set undodir=~/.vim/undodir  " Set the directory for undo history

set ttyfast                   " speed up nvim

