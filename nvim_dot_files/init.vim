map <F9> <Esc>:w<CR>:split term://python3 %<CR>i

imap <F9> <Esc>:w<CR>:split term://python3 %<CR>i
map <F11> <Esc>:w<CR>:!clang %<CR>
map <F8> <Esc>:w<CR>:split term://./a.out<CR>i
imap <F11> <Esc>:w<CR>:!clang %<CR>
imap <F8> <Esc>:w<CR>:split term://./a.out<CR>i
map <F2> <Esc>:w<CR>:!pdflatex %<CR>
imap <F2> <Esc>:w<CR>:!pdflatex %<CR>

syntax on
source $HOME/.config/nvim/vim-plug/plugins.vim
set number
set relativenumber

set clipboard^=unnamed
highlight CursorLineNr ctermfg=LightGray

let g:airline_theme='deus'

filetype plugin indent on 
filetype plugin indent on " required
 syntax on                 " required

 autocmd Filetype * AnyFoldActivate               " activate for all filetypes
 let g:indentLine_char='|'
set foldlevel=25
let g:ycm_filetype_blacklist = { 'tex': 0 }
let g:tex_conceal=""
