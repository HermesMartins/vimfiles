set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " plugin manager
Plugin 'tomasr/molokai' "theme
Plugin 'itchyny/lightline.vim' " status bar
Plugin 'Yggdroot/indentLine'

Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'

Plugin 'neoclide/coc.nvim'
Plugin 'sheerun/vim-polyglot'

" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'ap/vim-css-color'
Plugin 'prettier/vim-prettier'

Plugin 'easymotion/vim-easymotion'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ---------------------- General Settings ---------------------- "
set encoding=UTF-8
syntax on
set autoread
set number relativenumber
set colorcolumn=81
set cursorline

" More natural split opening
set splitbelow
set splitright

set exrc
set secure

" Confs
let g:netrw_winsize = 25
set tabstop=4
set shiftwidth=4
set expandtab
let g:indentLine_char = '┊'
set list lcs=tab:\|\
" ---------------------- .end/General Settings ---------------------- "

" only for mac??
set rtp+=/usr/local/opt/fzf

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component': {
      \   'filename': '%f',
      \ },
     \ }

" ---------------------- Key Remapping ---------------------- "
let mapleader = ","

inoremap jk <ESC>
nmap <C-p> :Files<CR>
nmap <C-a> :Ag<CR>
nmap <C-n> :NERDTreeToggle<CR>
nmap <leader>i :TagbarToggle<CR>

" move lines arround
nnoremap <leader>k :m-2<cr>==
nnoremap <leader>j :m+<cr>==
xnoremap <leader>k :m-2<cr>gv=gv
xnoremap <leader>j :m'>+<cr>gv=gv
