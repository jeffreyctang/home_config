set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundleinstead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
set number
set laststatus=2
set hlsearch
set ai
 
set expandtab
set shiftwidth=4
set softtabstop=4
filetype plugin indent on
set cursorline
set showmatch


let python_highlight_all = 1
set modeline
set modelines=5



if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif

execute pathogen#infect()
" Enable folding
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css, *.yml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

Plugin 'vim-scripts/indentpython.vim'

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

Bundle 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on

Plugin 'jnurmine/Zenburn'
Plugin 'tpope/vim-fugitive'

