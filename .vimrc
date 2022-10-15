set number
set relativenumber
syntax on
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set laststatus=2
set viminfo+=n~/.vim/viminfo
set autoindent
set tabstop=4
set shiftwidth=2
set sw=2
let g:airline_theme='sol'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled = 1
let g:netrw_browse_split = 2
let g:netrw_winsize = 85 
let g:netrw_banner = 0
filetype plugin indent on
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
