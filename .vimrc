execute pathogen#infect()

set number
set noswapfile
"set guifont=Monaco:h14
:set guifont=Monaco\ for\ Powerline\ 11
"colorscheme jellybeans
"colorscheme macvim
set bg=dark    " Setting dark mode 
"colorscheme  solarized
syntax on
color dracula
"colorscheme one 
set backspace=indent,eol,start
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
set shell=bash\ -l
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

filetype off                   " required!


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install Plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, requi
Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/LeaderF'
Plugin 'pangloss/vim-javascript'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'skammer/vim-css-color'
Plugin 'tpope/vim-haml'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'wavded/vim-stylus'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-pug'
Plugin 'kchmck/vim-coffee-script'
Plugin 'isRuslan/vim-es6'
Plugin 'posva/vim-vue'
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'ervandew/supertab'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/taglist.vim'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/darkZ'
Plugin 'rakr/vim-one'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'dracula/vim'
Plugin 'HerringtonDarkholme/yats.vim'
call vundle#end()       

filetype plugin indent on



au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict



let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

let g:one_allow_italics = 1 
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
let g:airline_powerline_fonts = 1
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


let g:user_emmet_mode='a'
let g:user_emmet_expandabbr_key = '<Tab>'
let g:vue_disable_pre_processors=1
