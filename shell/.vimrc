color desert
syntax on
set number
set cursorline

filetype indent on
set tabstop=4
set shiftwidth=4
set autoindent
set softtabstop=4
set expandtab

set laststatus=2
set ruler
filetype plugin indent on

set showcmd
set showmatch
set hlsearch
set ignorecase
set paste

autocmd BufWritePost $MYVIMRC source $MYVIMRC

set fileencodings=utf-8,gbk
set termencoding=utf-8
set encoding=utf-8
