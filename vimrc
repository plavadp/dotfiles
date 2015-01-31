set nocompatible " not vi compatible

"--------------
"" Load pathogen
"--------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

""------------------
" Syntax and indent
" "------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

