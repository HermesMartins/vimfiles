set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " plugin manager
Plugin 'itchyny/lightline.vim' " status bar
Plugin 'Yggdroot/indentLine'

Plugin 'scrooloose/nerdtree'
Plugin 'preservim/nerdcommenter'

" Plugin 'ludovicchabant/vim-gutentags'

" Motion
    Plugin 'easymotion/vim-easymotion'
" Search
    "Plugin 'junegunn/fzf'
    "Plugin 'junegunn/fzf.vim'
    Plugin 'nvim-lua/popup.nvim'
    Plugin 'nvim-lua/plenary.nvim'
    Plugin 'nvim-telescope/telescope.nvim'
" Syntax
    Plugin 'ap/vim-css-color'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'prettier/vim-prettier'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'neoclide/coc.nvim'
" Color-schemes
    Plugin 'tomasiser/vim-code-dark' "theme
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

colorscheme codedark

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
set list lcs=tab:\|\
let g:indentLine_char = '┊'
let g:loaded_python_provider = 0
" ---------------------- .end/General Settings ---------------------- "

" only for mac??
set rtp+=/usr/local/opt/fzf

let g:lightline = {
      \ 'colorscheme': 'codedark',
      \ 'component': {
      \   'filename': '%f',
      \ },
     \ }

" ---------------------- Key Remapping ---------------------- "
let mapleader = ","

inoremap jk <ESC>

nnoremap n zzn
nnoremap N zzn

nnoremap <C-p> :Telescope find_files<CR>
nnoremap <C-a> :Telescope live_grep<CR>

"nmap <C-p> :Files<CR>
"nmap <C-a> :Ag<CR>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFind<CR>

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

nnoremap Q <nop>

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <leader>k :m-2<cr>==
nnoremap <leader>j :m+<cr>==
xnoremap <leader>k :m-2<cr>gv=gv
xnoremap <leader>j :m'>+<cr>gv=gv
