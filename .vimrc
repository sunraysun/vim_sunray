set number
set guifont=monaco
colorscheme jellybeans
"colorscheme macvim
"colorscheme darkspectrum
set backspace=indent,eol,start
syntax on
set hls
set cursorline
set incsearch
set nocompatible
filetype plugin indent on
set mouse=a
set smartindent
set smarttab
set shiftwidth=2
set tabstop=4
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
set columns=120 lines=40
let g:allml_global_maps = 1
let g:SuperTabRetaincompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"set showtabline=2
set guioptions-=T
let mapleader="," 
map <leader>d :NERDTreeToggle <CR>
map <leader>t :TlistToggle <CR>
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70
map <leader>f :FufFile <CR>
map <leader>b :FufBuffer<CR>
map <C-T> :CommandT<CR>
set encoding=utf-8
set fileencodings=utf-8,chinese
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%{&encoding}]\ [%04l,%04v][%p%%]\ [%L]\ [%{fugitive#statusline()}]
set laststatus=2

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif
