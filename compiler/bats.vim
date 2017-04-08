" Bats.vim - Syntax files for Bats (Bash Automated Testing System).
" Version: 0.3.0

if exists("current_compiler")
  finish
endif
let current_compiler = 'bats'

if exists(":CompilerSet") != 2    " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=bats\ -t
" CompilerSet errorformat=
      " \%Enot\ ok\ %.\ %m
      " \%-C\#\ \(in\ test\ file\ %f\\,\ line\ %l\),
      " \%+C\#\ %m,
      " \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
