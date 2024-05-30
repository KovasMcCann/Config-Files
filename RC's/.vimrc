"add Syntax
syntax on

"enable syntax
syntax enable

"make the numbers on the side
set number relativenumber

"color scheme 
colorscheme ron

" Change Color when entering Insert Mode
autocmd InsertEnter * set nocursorline

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * set nocursorline

"" extra settings, uncomment them if necessary :)
"set cursorline
"set noshowmode
"set nocursorline

" trasparent end

"fu vi
set nocompatible

"history of lines
set history=1000

"something I don't rememeber
set ignorecase

"search
set hlsearch

"spelling
map o :setlocal spell! spelllang=en_us<CR>

"make search better
set incsearch

"set encoding
set encoding=utf-8

"maps
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"actavate nerd tree
map n :NERDTree <CR>

"get split ready
map s :sp 

"paste
map a "ay

map f :TerminalSplit  php -S localhost:8000 <CR> <CR>

"bash start thing
map b i #!/bin/bash<CR>

"plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'tc50cal/vim-terminal' 
Plug 'vim-python/python-syntax'
Plug 'vim-scripts/openscad.vim'
Plug 'tribela/vim-transparent'
call plug#end()


"openscad

"actavate ranbow text	
set expandtab  
set tabstop=2  
set shiftwidth=2  
set autoindent  
set smartindent  
set bg=dark  
set nowrap  
