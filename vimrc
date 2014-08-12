filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Bundle 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'

call vundle#end()

execute pathogen#infect()
" See what you're typing
set showcmd

" See what mode you're in
set showmode

" Syntax highlighting
filetype plugin indent on
syntax on
syntax enable

" Tab and indentation settings
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
" When opening files with tabs, display properly
set tabstop=8
" round to closest shiftwidth
set shiftround
set copyindent
set preserveindent


" Show matching brackets
set showmatch

" Spaces > Tab
set expandtab
set smarttab

" Tab completion
set wildmenu
set wildmode=list:longest,full

" Line numbers
set number

" Highlight current line
set cursorline

" Search help
set ignorecase
set smartcase

" Incremental search
set incsearch

" Highlight search match
set hlsearch

" Put all tmp files in one place, avoid Dropbox complaints
au BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S") . '.vimbackup'
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Keep at least 5 lines above/below
set scrolloff=5

" Show all non-printing chars
set list
" Tell vi what non-printing chars we want to see
set listchars=tab:▸-,eol:$,trail:~,nbsp:~

" Open nerdtree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
