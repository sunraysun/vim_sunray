set number
set noswapfile
"set guifont=Monaco:h13
:set guifont=Monaco\ for\ Powerline
"colorscheme jellybeans
"colorscheme macvim
set bg=dark    " Setting dark mode 
colorscheme  solarized
"colorscheme darkZ 
set backspace=indent,eol,start
syntax on
set hls
set cursorline
set incsearch
set nocompatible
set mouse=a
vnoremap < <gv
vnoremap > >gv
set cuc
"set smartindent
set smarttab
set expandtab
set shiftwidth=2
set tabstop=4
set guioptions-=r
set guioptions-=L

autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

Bundle "pangloss/vim-javascript"
Bundle "myhere/vim-nodejs-complete"
Bundle "skammer/vim-css-color"
Bundle "tpope/vim-haml"
Bundle "hail2u/vim-css3-syntax"
Bundle "wavded/vim-stylus"
Bundle "groenewege/vim-less"
Bundle "digitaltoad/vim-jade"
Bundle "kchmck/vim-coffee-script"

Bundle "Townk/vim-autoclose"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-surround"
Bundle "edsono/vim-matchit"
Bundle "garbas/vim-snipmate"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "ervandew/supertab"
Bundle "kien/ctrlp.vim"
Bundle "honza/vim-snippets"
Bundle "vim-scripts/taglist.vim"
Bundle "godlygeek/tabular"
Bundle "nathanaelkane/vim-indent-guides"

Bundle "vim-scripts/darkZ"
Bundle "altercation/vim-colors-solarized"
Bundle "Lokaltog/vim-powerline"

filetype plugin indent on



au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict



let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1


let g:ctrlp_working_path_mode = 'ra'
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/node_modules/*,*/bower_components/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

"autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
set columns=100 lines=40
let g:allml_global_maps = 1
let g:SuperTabRetaincompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"set showtabline=2
set guioptions-=T
"set guioptions-=m
let mapleader="," 
map <leader>d :NERDTreeToggle <CR>
map <leader>t :TlistToggle <CR>
set encoding=utf-8
set fileencodings=utf-8,chinese

set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%{&encoding}]\ [%04l,%04v][%p%%]\ [%L]\ [%{fugitive#statusline()}]
set laststatus=2

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif
 

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:Powerline_symbols = 'fancy'
