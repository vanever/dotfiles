" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "van"
hi Normal		guifg=White guibg=black
"hi Comment			ctermfg=DarkCyan		guifg=Orange
hi Comment			ctermfg=Brown	guifg=Orange
hi Constant	ctermfg=Magenta		guifg=Magenta
hi Special			ctermfg=DarkMagenta	guifg=Red
hi Identifier ctermfg=Cyan  guifg=#7D26CD
hi Statement 		ctermfg=Yellow guifg=#7D26CD
hi PreProc	ctermfg=LightBlue	guifg=#ff80ff
hi Type	ctermfg=Yellow	guifg=Yellow 
"hi Type	term=underline		ctermfg=LightGreen	guifg=Yellow 
hi Function			ctermfg=Green guifg=Green
hi Repeat	ctermfg=White		guifg=LightGreen
hi Operator				ctermfg=Red			guifg=Red
hi Ignore				ctermfg=black		guifg=bg
hi Error	ctermbg=Red ctermfg=White guibg=Red guifg=White
hi Todo	term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
