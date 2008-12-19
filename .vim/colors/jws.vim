" Vim color file
" Maintainer:	Jimmy Wu <frozenthrone88@gmail.com>
" Last Change:	2008-03-15


" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "jws"
"#181b1f
hi Normal ctermfg=LightGrey ctermbg=Black guifg=#b4b4b4 guibg=black

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg  ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch  cterm=reverse gui=reverse guifg=#7ec0ee guibg=black
hi ModeMsg  cterm=bold gui=none
hi StatusLine  cterm=reverse gui=reverse guibg=black guifg=#bfbfbf
hi StatusLineNC  cterm=reverse gui=reverse guibg=#cccccc guifg=#4d4d4d
hi VertSplit  cterm=reverse gui=reverse
hi Visual  ctermbg=darkgrey guibg=#555555
hi VisualNOS cterm=bold gui=none
hi DiffText   ctermbg=Red  guibg=Red guifg=white
hi Cursor guibg=#afb4db guifg=Black
hi Directory  ctermfg=LightCyan guifg=#99cc00
hi LineNr  ctermfg=lightmagenta guifg=#555555
hi MoreMsg  ctermfg=LightGreen gui=none guifg=#99cc00
hi NonText  ctermfg=5  guifg=#333333 gui=underline
hi Question  ctermfg=LightGreen  guifg=#99cc00 gui=none
hi Search  ctermbg=Yellow ctermfg=Black guibg=#8ccbea guifg=Black
hi SpecialKey  ctermfg=LightBlue guifg=#ffa0a0 gui=none
hi Title  ctermfg=LightMagenta  guifg=Magenta gui=none
hi WarningMsg  ctermfg=LightRed guifg=Red
hi WildMenu  ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Folded  ctermbg=LightGrey ctermfg=DarkBlue guibg=#4d4d4d guifg=#ffd700
hi FoldColumn  ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd  ctermbg=DarkBlue guibg=DarkBlue
hi DiffChange  ctermbg=DarkMagenta guibg=DarkMagenta
hi DiffDelete  ctermfg=Blue ctermbg=DarkCyan  guifg=white guibg=DarkCyan
hi CursorLine  cterm=underline  gui=underline
hi Pmenu guibg=#b7ba6b guifg=black
hi PmenuSel guibg=#224b8f

" Groups for syntax highlighting
hi Comment    ctermfg=green guifg=#a5c261
hi Identifier  ctermfg=LightCyan guifg=#f3715c
hi PreProc  ctermfg=Cyan guifg=#d7a0d7
hi Type  ctermfg=LightGreen guifg=#76becc gui=none
hi Error  ctermbg=Red  ctermfg=White gui=reverse guibg=Red guifg=white
hi Todo  ctermfg=Black ctermbg=Yellow guifg=Black guibg=#ffffa0
hi Constant  ctermfg=LightGreen guifg=#faa755
hi Special  ctermfg=LightRed guifg=#deab8a
hi Statement ctermfg=Yellow   guifg=#ffffa0 gui=none
hi Ignore ctermfg=DarkGrey guifg=#99cc00
hi Number ctermfg=Cyan guifg=#65c29c
hi MatchParen guibg=#d50000 guifg=white
hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black
hi Underlined guifg=#80a0ff gui=none

" vim: sw=2
