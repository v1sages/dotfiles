" __  __  __     ___ ___
"/\ \/\ \/\_\  /' __` __`\
"\ \ \/ |\/\ \ /\ \/\ \/\ \
" \ \___/ \ \ \\ \_\ \_\ \_\
"  \/__/   \/_/ \/_/\/_/\/_/

" Use quotation marks for comments in vim
" pathogen for managing vim plugins
execute pathogen#infect()

filetype plugin indent on	" Load plugins according to deteced filetype.
filetype plugin on
" Basic settings
syntax on                  " Highlight syntax
set number	           " Show line numbers
set noswapfile		   " Disable swapfile
set ignorecase	           " Ignore case in search

set autoindent             " Indent according to previous line.
" set expandtab              " Use spaces instead of tabs.
set tabstop = 4		   " Tab key indents by 4 spaces
set softtabstop =4         " Soft Tab indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set termguicolors	   " show gui colors

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Highlight all results.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

" MAPPINGS AND SHORTCUTS
" Re-map j + k as ESC key. 
inoremap jk <ESC>
" Change leader key from forward slash to '
 let mapleader = "'"
" Create new line below current line without leaving normal mode or moving cursor
noremap - m`o<Esc>``
" Create new line above current line without leaving normal mode or moving cursor
noremap _ m`O<Esc>``
" Set Ctrl + D/U to go up and down, with the cursor centered 
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

" Color stuff and mouse nav from Tim Unkert 
" Add an 80-char colored column, to tell us if our code is too wide
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>
" Let mouse navigate between tabs
set mouse=a
" User <ctrl>+h/j/k/l to switch panes when in :vsp or other Vim Splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" The_Viking_Programmer plugin-less preview method for LaTeX PDF Live Preview
map I :! pdflatex %<CR><CR>
map S :! zathura $(echo % \| sed 's/tex$/pdf/') & disown<CR>

