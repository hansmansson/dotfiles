call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf.vim'
Plug 'dantler/vim-alternate'
Plug 'nanotech/jellybeans.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'bogado/file-line'

call plug#end()

map <space> <leader>

set ttymouse=xterm2
set nocompatible
silent! colorscheme jellybeans
autocmd!
set nocp
syntax on
set history=50
set showmode
set showcmd
set ru
set wmnu
set wildmode=longest,list
set showmatch
set ls=2
set nobk
set tabstop=2
set shiftwidth=2
set autoindent
set cindent
set expandtab
set ignorecase
set smartcase
set incsearch
set hlsearch
set number
set undolevels=300
set nowrap
set title

:set tags=tags;/

:highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red
au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

set t_Co=256
"set t_Co=16
set enc=utf-8
set directory=/tmp
set mouse=a

filetype plugin indent on

autocmd FileType c,h setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType cpp,cc,chh setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType make setlocal shiftwidth=4 tabstop=4 noexpandtab
autocmd FileType mail setlocal nocindent textwidth=72 wrap
autocmd FileType java setlocal nocindent shiftwidth=4 tabstop=4 expandtab colorcolumn=100

set backspace=2

set hidden

set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

let g:netrw_liststyle=3

au BufWritePost .vimrc so ~/.vimrc
cmap w!! %!sudo tee > /dev/null %
noremap <silent><Leader>* :nohls<CR>
set colorcolumn=80

nmap <silent> <c-p> :FZF<CR>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
