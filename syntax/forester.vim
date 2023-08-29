if exists('b:current_syntax')
  finish
endif


syntax match foresterBackslash /\\\h\+/
syntax match foresterLinkHref /\v\[[^]]*]\(\zs[^)]*\ze\)/

highlight default link foresterBackslash Keyword
highlight default link foresterLinkHref Special


let b:current_syntax = 'forester'
