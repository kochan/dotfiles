""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" Highlight Parenthesis
set showmatch

" Display Number
set number

" Diplay Invisible Chars
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<
set display=uhex

" Display ZenkakuSpace
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

" Highlight Cursorline
set cursorline

" Scrolling Page <space>j, <space>k
noremap <Space>j <C-f>
noremap <Space>k <C-b>

" Searching
set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト
nmap <ESC><ESC> ;nohlsearch<CR><ESC> " Escの2回押しでハイライト消去

" Indent
"set autoindent
"set paste
"set smartindent
"set cindent

" Tab
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=0

" Don't redraw while executing macros (good performance config)
"set lazyredraw

" For regular expressions turn magic on
set magic

" Escの2回押しでハイライト消去
"nmap <ESC><ESC> ;nohlsearch<CR><ESC>
nnoremap <CR> :noh<CR><CR>

" Status Line
set laststatus=2 " 常にステータスラインを表示

"カーソルが何行目の何列目に置かれているかを表示する
set ruler

" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'

Bundle "YankRing.vim"
Bundle "http://github.com/thinca/vim-quickrun.git"
Bundle "http://github.com/thinca/vim-poslist.git"
Bundle "http://github.com/mattn/gist-vim.git"
Bundle "http://github.com/rstacruz/sparkup.git", {'rtp': 'vim/'}

" Color
Bundle 'altercation/vim-colors-solarized'
"Bundle 'xoria256.vim'
"Bundle 'jpo/vim-railscasts-theme'
"Bundle '29decibel/codeschool-vim-theme'

" Japanese
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-fold'
Bundle 'kana/vim-textobj-indent'
Bundle 'kana/vim-textobj-lastpat'

" Programming
Bundle "jQuery"
Bundle "rails.vim"
Bundle 'vim-ruby/vim-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'nelstrom/vim-textobj-rubyblock'

" Snippets
Bundle "http://github.com/gmarik/snipmate.vim.git"

" Syntax highlight
Bundle "cucumber.zip"
Bundle "Markdown"

" Git integration
Bundle "git.zip"
Bundle "fugitive.vim"

" (HT|X)ml tool
Bundle "ragtag.vim"

" Utility
Bundle "repeat.vim"
Bundle "surround.vim"
Bundle "SuperTab"
Bundle "file-line"
Bundle "Align"

" FuzzyFinder
Bundle "L9"
Bundle "FuzzyFinder"


<<<<<<< HEAD
"Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/vimfiler'
=======
"Bundle 'git-commit'
"Bundle 'vimwiki'
"Bundle 'Rename'
"Bundle 'jade.vim'
"Bundle 'taglist.vim'
"Bundle 'scrooloose/syntastic'
>>>>>>> ccccaa907182f9c0c997a56f59e15e0d68f1601c

"Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/vimfiler'
"Bundle 'h1mesuke/vim-alignta'

"Bundle 'Shougo/unite.vim'
"Bundle 'tsukkee/unite-help'
"Bundle 'h1mesuke/unite-outline'
"Bundle 'basyura/unite-rails'
"Bundle 'tsukkee/unite-tag'

"Bundle 'tpope/vim-haml'
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-cucumber'
"Bundle 'tpope/vim-endwise'
"Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-fugitive'

"Bundle 'Lokaltog/vim-powerline'

"Bundle 'tangledhelix/vim-octopress'

"Bundle 'csexton/trailertrash.vim'

"Bundle 'glidenote/octoeditor.vim'

"Bundle 'kchmck/vim-coffee-script'

"Bundle 'mattn/gist-vim'
"Bundle 'mattn/webapi-vim'

"Bundle 'hail2u/vim-css3-syntax'


" Vundle required
filetype plugin indent on     " required!


" Color
syntax enable
set term=screen-256color
set background=dark
" set background=light
colorscheme solarized


" launch NERDtree when execute vim .
let file_name = expand("%")
if has('vim_starting') &&  file_name == ""
  autocmd VimEnter * NERDTree ./
endif

:command NE NERDTree

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map <S-l> :wincmd l<CR>
map <S-h> :wincmd h<CR>
