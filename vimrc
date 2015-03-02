set nocompatible " not vi compatible

"--------------
"" Load pathogen
"--------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

set number
set tags+=/usr/local/share/ctags/qt4
set mouse=a

let mapleader=","
let maplocalleader=","

filetype indent on
set shiftwidth=4
set ts=4
set expandtab
set splitright

set pastetoggle=<F2>

set hlsearch

" fast escape
inoremap jk <esc>

" uppercase word
inoremap <c-u> <esc>vbU

" switch between .h/.cpp
nnoremap <leader>a :A<CR>

" tab complete
inoremap <tab> <c-n>

"
""------------------
" Syntax and indent
" "------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them
set number " line numbers

vmap <Left> <gv
vmap <Right> <gv


color delek

" vimrc controls
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
nnoremap <leader>sv :source $MYVIMRC<cr> 


" switch between .h/.cpp
nnoremap <leader>a :A<CR>

" fast split screen navigation
nnoremap <c-w><c-w> iNOPENOPENOPENOPE<esc>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" fast make
nnoremap <leader>m :wa<cr> :Make<cr>
nnoremap <leader>mm :wa<cr> :make -j12<cr>
nnoremap <leader>mc :wa<cr> :make check -j12<cr>

" toggle ninja
nnoremap <leader>n :set makeprg=/spot/dev/3rdParty/cpp/misc/ninja/ninja-1.5.1/gcc-4.9.1/bin/ninja\ -C\ out/Release\ all<cr>
nnoremap <leader>d :set makeprg=/spot/dev/3rdParty/cpp/misc/ninja/ninja-1.5.1/gcc-4.9.1/bin/ninja\ -C\ out/Debug\ all<cr>
nnoremap <leader>N :set makeprg=make<cr>

set makeprg=/spot/dev/3rdParty/cpp/misc/ninja/ninja-1.5.1/gcc-4.9.1/bin/ninja\ -C\ out/Debug\ all<cr>

" swap lines
nnoremap _ ddkP
nnoremap - ddp

" operator parens, brackets, quotes
onoremap p i(


" fast semicolon
nnoremap <leader>; mqA;<esc>`q

nnoremap <leader>C :call ColorToggle()<cr>

let g:desert_on = 0

function! ColorToggle()
    if g:desert_on
        color delek
        let g:desert_on = 0
    else
        color desert
        let g:desert_on = 1
    endif
endfunction
