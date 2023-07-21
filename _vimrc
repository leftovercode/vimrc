" Based off of:
" https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

" Set encoding
set encoding=utf8

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of
" file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on
syntax on

" Add numbers to each line on the left-hand side
" Shows current line number where cursor is and
" how far away every other line is
set number relativenumber

" Highlight cursor line underneath the cursor horizontally
set cursorline

" Set shift width to 4 spaces
" Use tab key for indentation instead of inserting tab characters
set shiftwidth=4 smarttab

" Set tab with to 8 columns
" DO NOT use spaces with tabs
" Avoid tabs looking like proper indents
set tabstop=8 softtabstop=0

" Use space characters instead of tabs
set expandtab

" While searching though a file incrementally highlight matching characters as you type
set incsearch

" Ignore capital letters during search
set ignorecase

" Override the ignorecase option if searching for capital letters
" This will allow you to search specifically for capital letters
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line
set showmode

" Show matching words during a search
set showmatch

" Use highlighting when doing a search
set hlsearch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Have colors properly show on the terminal
set termguicolors

" Copy and past easier across programs in all OSes
set clipboard=unnamedplus

" Allow backspacing over autoindent, line breaks, and start of insert
set backspace=indent,eol,start


" PLUGINS ---------------------------------------------------------------- {{{

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Git shit
Plug 'tpope/vim-fugitive'

" LaTeX shit
Plug 'lervag/vimtex'

" NERDTree shit
" File tree in vim
Plug 'preservim/nerdtree'

" Status bar shit
Plug 'itchyny/lightline.vim'

" Colorscheme shit
Plug 'chriskempson/base16-vim'

" Web Dev shit
" HTML/CSS Code completion
Plug 'mattn/emmet-vim'

" Linting shit
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()

" Set colorscheme
" Has to be after plug in code for some reason
colorscheme base16-gruvbox-dark-medium

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Emmet
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" Set PDF viewer for latex
let g:vimtex_view_general_viewer = 'okular'

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Code allows for true fullscreen with GVIM
" If on windows, need dll where gvim.exe is located
" https://www.vim.org/scripts/script.php?script_id=2596&quot
" https://github.com/derekmcloughlin/gvimfullscreen_win32/tree/master
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
    set guioptions-=m  "menu bar
    set guioptions-=T  "toolbar
    set guioptions-=r  "scrollbar
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
  endif
endif

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
