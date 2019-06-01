" Bats.vim - Syntax files for Bats (Bash Automated Testing System).
" Version: 0.7.0

autocmd BufRead,BufNewFile *.bats set filetype=bats
autocmd BufRead,BufNewFile * call s:DetectBats()

function! s:DetectBats()
  if getline(1) =~# '^#!.*\<bats\>'
    let &filetype = 'bats'
  endif
endfunction
