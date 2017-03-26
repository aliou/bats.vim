" Bats.vim - Syntax files for Bats (Bash Automated Testing System).

" Load Bash syntax.
let g:is_bash=1
runtime! syntax/sh.vim
unlet b:current_syntax

" Define Bats custom keywords. :h :syn-define
syntax match batsTestKeyword "\v\@test"
syntax keyword batsFunction	load setup teardown run skip

" TODO: Find a way to have the batsFunction highlighting work while keeping the
" Bash highlighting working.
syntax region batsTestBlock transparent start='{' end='}'

" Link the colors to the existing group name. :h group-name
highlight default link batsTestKeyword	Operator
highlight default link batsFunction	Function

" Set the current syntax as Bats.
let b:current_syntax = 'bats'
