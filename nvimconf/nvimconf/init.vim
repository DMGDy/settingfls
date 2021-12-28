map <F9> <Esc>:w<CR>:split term://python3 %<CR>i
imap <F9> <Esc>:w<CR>:split term://python3 %<CR>i
map <F11> <Esc>:w<CR>:!make<CR>
map <F8> <Esc>:w<CR>:split term://./%:r<CR>i
imap <F11> <Esc>:w<CR>:!make<CR>
imap <F8> <Esc>:w<CR>:split term://./%:r<CR>i
map <F2> <Esc>:w<CR>:!pdflatex %>/dev/null<CR>
imap <F2> <Esc>:w<CR>:!pdflatex %>/dev/null<CR>
syntax on
source $HOME/.config/nvim/vim-plug/plugins.vim
set number
set relativenumber
set rnu

set clipboard^=unnamed
highlight CursorLineNr ctermfg=LightGray


