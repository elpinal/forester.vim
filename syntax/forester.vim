if exists('b:current_syntax')
  finish
endif


syntax match foresterBackslash /\\\a\+/
syntax match foresterLinkHref /\v\[[^]]*]\(\zs[^)]*\ze\)/
syntax match foresterComment /%.*$/

highlight default link foresterBackslash Keyword
highlight default link foresterLinkHref Special
highlight default link foresterComment Comment


let b:current_syntax = 'forester'
