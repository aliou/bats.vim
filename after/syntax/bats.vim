" Bats.vim - Syntax files for Bats (Bash Automated Testing System).
" Version: 0.7.0

" Load Bash syntax.
let g:is_bash=1
runtime! syntax/sh.vim
unlet b:current_syntax

" Define Bats custom keywords. :h :syn-define
syntax match batsTestKeyword "\v\@test"

syntax keyword batsFileFunction	load

syntax keyword batsTestFunction	setup teardown
syntax keyword batsTestFunction	run skip containedin=shExpr contained

syntax keyword batsAssertions	assert refute containedin=shExpr contained
syntax keyword batsAssertions	assert_equal containedin=shExpr contained
syntax keyword batsAssertions	assert_success containedin=shExpr contained
syntax keyword batsAssertions	assert_failure containedin=shExpr contained
syntax keyword batsAssertions	assert_output containedin=shExpr contained
syntax keyword batsAssertions	refute_output containedin=shExpr contained
syntax keyword batsAssertions	assert_line containedin=shExpr contained
syntax keyword batsAssertions	refute_line containedin=shExpr contained
syntax keyword batsAssertions	assert_file_exist containedin=shExpr contained
syntax keyword batsAssertions	assert_file_not_exist containedin=shExpr contained

" Link the colors to the existing group name. :h group-name
" TODO(ad): Choose better links?
highlight default link batsTestKeyword	Identifier
highlight default link batsFileFunction	Function
highlight default link batsTestFunction	Function
highlight default link batsAssertions	Function

" Set the current syntax as Bats.
let b:current_syntax = 'bats'
