set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'Yggdroot/indentLine'

Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'

Plugin 'neoclide/coc.nvim'
Plugin 'sheerun/vim-polyglot'

Plugin 'ludovicchabant/vim-gutentags'
Plugin 'junegunn/fzf.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/sets.vim

colorscheme gruvbox
set background=dark    " Setting dark mode
let g:gruvbox_contrast_dark = 'soft'

syntax on

"Tagbar
nmap <leader>i :TagbarToggle<CR>

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

let g:php_namespace_sort_after_insert = 1

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" only for mac??
set rtp+=/usr/local/opt/fzf

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
