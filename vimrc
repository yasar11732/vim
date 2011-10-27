let mapleader = ","
set incsearch
set nocompatible
set nohlsearch
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
"Birden fazla boş satırı tek boş satıra dönüştürme"
nnoremap <F4> mp:g/^$/,/./-j<CR>`p
"Satır sonlarındaki boşlukları temizleme kısayolu"
nnoremap <F5> mp:%s/\s\+$//e<CR>`p
"Tüm metini girintileme kısayolu"
nnoremap <F6> mpgg=G`p

"set hidden"
"Rasgele 10 karakter oluşturucu..."
imap <c-j>d <c-r>=system("/home/yasar/myscripts/rasgele.py")

"Toolbar'ı kaldır."
set go-=T

"pencere geçişleri"
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-j> <C-w>j

"Aynı klasörden dosya açma kısayolu"
map <leader>ew :e <C-R>=expand('%:p:h') . "/" <CR>
nnoremap <leader>v :tabedit $MYVIMRC<CR>

"Satır kaydırma"
nmap <C-Down> ddp
nmap <C-Up> ddkP
"php sözlük dosyası"
if has("autocmd")
    autocmd FileType php set complete+=k/home/yasar/.vim/dics/PHP.dict
endif

"python sözlük dosyası"
if has("autocmd")
    autocmd FileType python set complete+=k/home/yasar/.vim/dics/complete-dict
endif

"Çalışma yolunu proje dizinime ayarla"
set path+=/home/yasar/Desktop/pub_html/application/**
"Projemin tag dosyasını dahil et"
set tags+=/home/yasar/Desktop/pub_html/tags
