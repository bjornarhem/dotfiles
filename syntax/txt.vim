" Vim syntax file for text files

if exists("b:current_syntax")
  finish
endif

" Matches
syn match todoItem '^\s*-.*'
syn match onHoldItem '^\s*+.*'
syn match commentItem '^\s*\*.*'

" Assign coloring
hi def link todoItem Statement
hi def link onHoldItem PreProc
hi def link commentItem Constant

