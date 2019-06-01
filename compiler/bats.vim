" Bats.vim - Syntax files for Bats (Bash Automated Testing System).
" Version: 0.7.0

if exists("current_compiler")
  finish
endif
let current_compiler = 'bats'

if exists(':CompilerSet') != 2    " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=bats\ %

" TODO: Also match errors occuring somewhere else than in test.
let s:errorformat = join([
  \ '%Enot ok %m',
  \ '%-C# (in test file %f\\, line %l)',
  \ '%-C#  %m',
  \ '%-G%.%#',
  \ '%Z'
  \ ], ',')

execute 'CompilerSet errorformat=' . escape(s:errorformat, ' ')
