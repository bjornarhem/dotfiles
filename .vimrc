" --
" Vundle stuff
" --
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set ruler
set showmatch
set ignorecase
set incsearch
set number
set autoindent
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

execute pathogen#infect()
let g:syntastic_python_checkers=['flake8', 'python3']
let g:syntastic_python_flake8_args='--ignore=E231,E501,E265,E226,E261,W391,E225,E302,E305,E731'

syntax on

function! CleverTab()
  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  else
    return "\<C-N>"
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

command W Gwrite | Git commit -m "auto-commit from vim" | Git push
command Wq Gwrite | Git commit -m "auto-commit from vim" | Git push | q
