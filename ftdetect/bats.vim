autocmd BufRead,BufNewFile *.bats set filetype=bats
autocmd BufRead,BufNewFile * call s:DetectBats()

function! s:DetectBats()
  if getline(1) =~ '^#!.*\<bats\>'
    let &filetype = 'bats'
  endif
endfunction
