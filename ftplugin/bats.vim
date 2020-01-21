" Bats.vim - Syntax files for Bats (Bash Automated Testing System).
" Version: 0.7.0

" Comment string.
setlocal commentstring=#\ %s

" Consider `$` as part of a word text object.
setlocal iskeyword+=$

" Go to files in `load` directives.
setlocal suffixesadd=.bash

" Enable the compiler.
compiler bats
