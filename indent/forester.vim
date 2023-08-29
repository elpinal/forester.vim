if exists('b:did_indent')
  finish
endif


setlocal autoindent
setlocal indentexpr=GetForesterIndent()
setlocal indentkeys=!^F,o,O,}

setlocal expandtab
setlocal tabstop<
setlocal softtabstop=2
setlocal shiftwidth=2

let b:undo_indent = 'setlocal '.join([
\   'autoindent<',
\   'expandtab<',
\   'indentexpr<',
\   'indentkeys<',
\   'shiftwidth<',
\   'softtabstop<',
\   'tabstop<',
\ ])


function! GetForesterIndent()
  let plnum = prevnonblank(v:lnum - 1)
  if getline(plnum) =~# '\v\{\s*$' && getline(v:lnum) =~# '\v^\s*\}'
    return indent(plnum)
  endif

  if getline(plnum) =~# '\v\{\s*$'
    return indent(plnum) + &l:shiftwidth
  endif

  if getline(v:lnum) =~# '\v^\s*\}'
    return indent(plnum) - &l:shiftwidth
  endif

  return indent(plnum)
endfunction


let b:did_indent = 1
