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
