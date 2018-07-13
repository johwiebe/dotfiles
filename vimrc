set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" sensible defaults
Plugin 'tpope/vim-sensible'

Plugin 'tmhedberg/SimpylFold'
" Plugin 'vim-scripts/identpython.vim'
Plugin 'chrisbra/csv.vim', {'for': 'csv'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'lervag/vimtex' 		" Better LaTex support

Plugin 'flazz/vim-colorschemes' 	" Colorschemes
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'	" Git

" markdown preview
Plugin 'JamshedVesuna/vim-markdown-preview'

" better status bar
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

filetype plugin indent on
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\S\zs\s\+$/

" Syntax for LaTex
au BufRead,BufNewFile *.tex,*.tikz
    \ set syntax=context |
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set fileformat=unix

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

set encoding=utf-8

" Spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab

" Make sure autocomplete window goes away
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

set nu
set hlsearch
set incsearch

set breakindent

" Map key for nerdtree
map <C-n> :NERDTreeToggle<CR>

colorscheme Monokai

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Options vim-markdown-preview
let vim_markdown_preview_github=1 " use grip
let vim_markdown_preview_hotkey='<C-m>' " ctrl+m for preview

" airline with powerline font
let g:airline_powerline_fonts=1
