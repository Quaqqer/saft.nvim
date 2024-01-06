if exists("b:current_syntax")
    finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case match

" Comments
syn keyword saftTodo contained TODO FIXME XXX
syn match saftComment "#.*$" contains=saftTodo,@Spell

" Keywords
syn keyword saftConditional if else
syn keyword saftRepeat loop
syn keyword saftKeyword fn return break

" Literals
" ---
" constants
syn keyword saftConstant nil true false

" floats
syn match saftNumber "\<\d\+\.\d*\>"
syn match saftNumber "\<\.\d*\>"

" integer
syn match saftNumber "\<\d\+\>"

" string
syn match saftString "\"[^\"]*\""

" Operators
syn keyword saftOperator and or := = + - * / // ^ < <= > >= == ! !=

" Builtin functions
syn keyword saftFunction sin cos time print repr read split join

hi def link saftTodo Todo
hi def link saftComment Comment

hi def link saftConditional Conditional
hi def link saftRepeat Repeat
hi def link saftKeyword Keyword

hi def link saftConstant Constant
hi def link saftNumber Number
hi def link saftString String

hi def link saftOperator Operator

hi def link saftFunction Function
