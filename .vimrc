set nocompatible
filetype off                  " required

set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdTree'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/matchit'
Plugin 'tomasr/molokai'
Plugin 'mhartington/oceanic-next'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required

filetype plugin indent on    " required
filetype indent on


syntax enable
set wildmenu
set ruler
set laststatus=2
set hlsearch
set incsearch
set scrolloff=5
set showmatch
set mat=2
set magic

colorscheme molokai
set background=dark
set t_Co=256

set encoding=utf8

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai
set si

set relativenumber number
set numberwidth=5

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50

" Clipboard settings
set clipboard=unnamedplus

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup
  let g:grep_cmd_opts = '--line-numbers --noheading'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

let g:airline_theme='molokai'

map <Space> <leader>
" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>


" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Tootle tagbar
nmap <F8> :TagbarToggle<CR>
