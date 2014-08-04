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
set relativenumber
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


set background=dark
set t_Co=256

colorscheme sexy-railscasts-256

"highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=0 ctermfg=12
endif

hi MatchParen ctermbg=0
hi MatchParen ctermfg=Red

hi LineNr ctermbg=63

let mapleader = ","

" switch tabs with ö and ä
:map ö :tabp <Enter>
:map ä :tabn <Enter>

" " Normal mode
" switch lines
" nnoremap <DOWN> :m .+1<CR>==
" nnoremap <UP> :m .-2<CR>==

" hide search highlight
" noremap <C-l> :nohlsearch<CR>

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" disable Shift-K, because its annoys me
nnoremap K <NOP>

" also in insert mode
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Remove trailing whitespace with F5
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

:command WQ wq
:command Wq wq
:command W w
:command Q q

noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-h> 5h
noremap <C-l> 5l

vnoremap <C-j> 5j
vnoremap <C-k> 5k
vnoremap <C-h> 5h
vnoremap <C-l> 5l


