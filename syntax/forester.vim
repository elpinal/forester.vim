if exists('b:current_syntax')
  finish
endif


syntax match foresterBackslash /\v\\[0-9A-Za-z]+/
syntax match foresterLinkHref /\v\[[^]]*]\(\zs[^)]*\ze\)/
syntax match foresterComment /%.*$/

highlight default link foresterBackslash Keyword
highlight default link foresterLinkHref Special
highlight default link foresterComment Comment


let b:current_syntax = 'forester'
