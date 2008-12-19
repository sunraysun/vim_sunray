set number
set cursorline
colorscheme blackboard
"colorscheme macvim
"colorscheme darkspectrum
syntax on
set hls
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
"let g:rct_completion_use_fri = 1
"let g:rct_completion_info_max_len = 20
let g:SuperTabRetaincompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"set showtabline=2
"nnoremap <silent> <C-n> :tabnext<CR>
"nnoremap <silent> <C-p> :tabprevious<CR>
"nnoremap <silent> <C-t> :tabnew<CR>
"nnoremap <silent> <C-w> :tabclose<CR>
set guioptions-=T
nnoremap <silent> <A--> :bdelete<CR>
nnoremap <silent> <C-F12> :!firefox file:///%:p<CR>
nnoremap <silent> <C-F11> :1,$!tidy<CR>
nnoremap <silent> <C-F10> :g/^\s*$/d<CR>
let g:fuzzy_ignore = "*.log, .*"
let g:fuzzy_roots = "~/Documents/dev/"
let g:fuzzy_matching_limit = 50
map ,o :FuzzyFinderTextMate<CR>
map ,b :FuzzyFinderBuffer<CR>
map ,d :FuzzyFinderDir<CR>
"map ,o :FuzzyFinderFile<CR>
map ,t :TlistToggle<CR>
"map ,d :execute 'NERDTreeToggle ' . getcwd()<CR>
