" Vim syntax file
" Language:	DRAGON  (.pen files)
" Version:	0.0b
" Last Change:	2012 07/23
" Maintainer:	Kevin Manalo (kmanalo AT gmail.com) kmanalo.com
" Usage:	Do :help pentran-syntax from Vim
" Credits:
"

" For version 5.x: Clear all syntax items
" For version 6.x: Quit if a syntax file is already loaded

filetype plugin on

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match dragComment "\*.*$"

syn keyword dragBlockICmd LINKED_LIST SEQ_BINARY SEQ_ASCII MODULE

syn keyword dragBlockIICmd REAL LIBRARY HEXASSEM DISCR LIBRARY PIJ
syn keyword dragBlockIICmd EDITION FLUX COMPO EDIT ECHO CMPO CPO
syn keyword dragBlockIICmd INTLIN DELETE END GEO HEXCEL MIX 
syn keyword dragBlockIICmd LIB EXCELT SHI ASM FLU EDI INFO UTL
syn keyword dragBlockIICmd TITLE SIDE RADIUS HBC
syn keyword dragBlockIICmd MAXR PISO TRAK TISO GAUS TSPC
syn keyword dragBlockIICmd TYPE K STEP NMIX  CTRA WIMS MIXS LIB WIMSD4 FIL
syn keyword dragBlockIICmd REFL COND NAME MICR ALL SAVE 

syn keyword dragLowercase compo edit

syn match dragOperator "="
syn match dragOperator ":="
syn match dragSemiOperator " ;"

let b:current_syntax = "dragon"

hi def link dragComment   Comment
hi def link dragBlockICmd Statement
hi def link dragBlockIICmd Statement
hi def link dragLowercase Statement
hi def link dragOperator Operator
highlight dragSemiOperator ctermbg=White ctermfg=Red
