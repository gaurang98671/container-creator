" Enable line numbers
set number

" Enable syntax highlighting
syntax enable

" Enable searching as you type
set incsearch

" Highlight search results
set hlsearch

" Enable line wrapping
set wrap

" Set the tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Enable mouse support (if your terminal supports it)
set mouse=a

" Show matching parentheses/brackets
set showmatch

" Enable line and column number in the status line
set ruler

" Auto-indent new lines
set autoindent
set smartindent

" Enable auto-wrapping at the end of lines
set textwidth=80
set wrapmargin=2

" Use a better status line with essential information
set laststatus=2
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Enable syntax highlighting for various file types
filetype plugin indent on

" Enable file type detection based on file extension
filetype on

" Enable autocompletion suggestions as you type
set completeopt=menuone,longest

" Enable backup and swap file handling
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" Enable clipboard support (if Vim was compiled with it)
set clipboard=unnamedplus

" Enable line folding
set foldmethod=indent
set foldlevel=1

" Enable file encoding detection
set encoding=utf-8

" Highlight current line
set cursorline

" Enable easy switching between split windows
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" Enable easy switching between tabs
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprev<CR>

" Enable easy commenting and uncommenting of lines
vnoremap <leader>c :s/^/\/\//<CR>gv
vnoremap <leader>u :s/\/\///<CR>gv

" Define custom leader key
let mapleader = ","

" Map the leader key for common operations
nmap <leader>h :noh<CR>    " Clear search highlight
nnoremap <leader>w :w<CR>  " Save the file
nnoremap <leader>q :q<CR>  " Quit Vim

" Enable syntax-specific settings
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab

" Enable syntax folding for specific file types
autocmd FileType python,javascript,html,xml,xhtml,yaml setlocal foldmethod=syntax
