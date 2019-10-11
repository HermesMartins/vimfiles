set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " plugin manager
Plugin 'flrnprz/plastic.vim' "theme
Plugin 'itchyny/lightline.vim' " status bar
Plugin 'Yggdroot/indentLine'

Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'

Plugin 'neoclide/coc.nvim'
Plugin 'sheerun/vim-polyglot'

Plugin 'ludovicchabant/vim-gutentags'
Plugin 'junegunn/fzf.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'easymotion/vim-easymotion'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/sets.vim

colorscheme plastic
set background=dark
syntax on

"Tagbar
nmap <leader>i :TagbarToggle<CR>

" only for mac??
set rtp+=/usr/local/opt/fzf

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component': {
      \   'filename': '%f',
      \ },
     \ }

