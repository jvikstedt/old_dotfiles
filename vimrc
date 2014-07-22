set encoding=utf8

execute pathogen#infect()
call pathogen#helptags()
filetype plugin on
filetype plugin indent on

syntax on
set autoindent
set ts=2
set shiftwidth=2
set expandtab
set nocompatible
set showmatch
set ignorecase
set hlsearch
set smartcase
set incsearch
set mouse=a
set ttimeoutlen=100
set vb
set ruler
set scrolloff=2
set laststatus=2
set list listchars=tab:»·,trail:·
set nofoldenable
set wildmenu
set wildmode=list:longest,full

set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set autoread
set expandtab
set tabstop=2
retab
set smartindent
set smarttab
set number

set nowrap "Don't wrap lines
set linebreak "Wrap lines at convenient points

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" first, enable status line always
set laststatus=2

"highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif

hi MatchParen ctermbg=0
hi MatchParen ctermfg=Red

" switch tabs with ö and ä
:map ö :tabp <Enter>
:map ä :tabn <Enter>

" " Normal mode
" switch lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" hide search highlight
noremap <C-l> :nohlsearch<CR>

" indent with tab, shift tab and backspace
nmap <TAB> >>
nmap <S-TAB> <<
nmap <BS> <<

" " Insert mode
" switch lines
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" " Visual mode
" switch lines
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
