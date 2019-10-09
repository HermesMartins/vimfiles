let mapleader = ","

" An easy way to esc on insert mode
inoremap jk <ESC>

" fzf
nnoremap <C-p> :Files<CR>

" ag
nnoremap <C-a> :Ag<CR>

" move lines arround
nnoremap <leader>k :m-2<cr>==
nnoremap <leader>j :m+<cr>==
xnoremap <leader>k :m-2<cr>gv=gv
xnoremap <leader>j :m'>+<cr>gv=gv

" nerdtree
nmap <C-n> :NERDTreeToggle<CR>
