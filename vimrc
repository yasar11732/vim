let mapleader = ","
set incsearch
set hlsearch
set nocompatible
set backspace=indent,eol,start
if has("vms")
    set nobackup
else
    set backup
endif
set history=50
set ruler
set showcmd
map Q gq
filetype plugin indent on
autocmd FileType text setlocal textwidth=78
set expandtab
set cmdheight=3
set textwidth=79
set shiftwidth=4
set tabstop=4
set whichwrap=b,s,<,>,[,]
set autoindent
syntax on
autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>
autocmd FileType php noremap <C-L> :w!<CR>:!/usr/bin/php -l %<CR>
nmap <leader>l :set list!<CR>
set number
set listchars=tab:▸\ ,eol:¬
colorscheme desert
" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif
nnoremap <F5> :%s/\s\+$//e<CR>
set hidden
imap <c-j>d <c-r>=system("/home/yasar/myscripts/rasgele.py")

set go-=T

"pencere geçişleri"
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-j> <C-w>j

"Aynı klasörden dosya açma kısayolu"
map <leader>ew :e <C-R>=expand('%:p:h') . "/" <CR>
map <leader>p :w !python2<CR>
nnoremap <leader>v :tabedit $MYVIMRC<CR>

"Word buble"
nmap <C-Down> ddp
nmap <C-Up> ddkP
"php sözlük dosyası"
if has("autocmd")
    autocmd FileType php set complete+=k/home/yasar/.vim/dics/PHP.dict
endif

"python dosyası"
if has("autocmd")
    autocmd FileType python set complete+=k/home/yasar/.vim/dics/complete-dict
endif

