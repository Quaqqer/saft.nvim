if exists("b:current_syntax")
    finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case match

" Keywords
syn keyword Conditional if else
syn keyword Repeat loop
syn keyword Keyword fn return break

" Literals
" ---
" constants
syn keyword Constant nil true false

" floats
syn match Number "\<\d\+\.\d*\>"
syn match Number "\<\.\d*\>"

" integer
syn match Number "\<\d\+\>"

" string
syn match String "\"[^\"]*\""

" Operators
syn keyword Operator and or := = + - * / // ^ < <= > >= == ! !=

" Builtin functions
syn keyword Function sin cos time print repr read split join
