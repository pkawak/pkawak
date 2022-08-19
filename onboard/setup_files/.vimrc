set undofile
# run mkdir -p ~/.vim/undodir
set undodir=~/.vim/undodir
set tabpagemax=100
set viminfo+=<100000
set mouse-=a
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
