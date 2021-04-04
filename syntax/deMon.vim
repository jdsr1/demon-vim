" Put this file in ~/.vim/syntax as deMon.vim
" Clear any other syntax for debugging purposes
"
if exists('b:current_syntax')
    finish
endif

syntax case ignore

" Keywords
syntax keyword dKeyword TITLE QUADR[ATURE] vxcty[pe]
syntax match dKeyword /\<qm\/mm\>/
syn match dKeyword /^basis/
hi link dKeyword Identifier

" Options
syntax keyword dOption core fixed
syntax region dOption start=/(/ms=e+1 end=/)/me=e-1
syntax match dOption /\(\a\|\s\)\+basis/ms=e-4
hi link dOption Statement

" Comments
syntax match dTodo contained /\(todo\|note\):*/
syntax match dComment /#.*/ contains=dTodo
hi link dTodo Todo
hi link dComment Comment

" Other
syntax region dBlock start=/read/ end=/end\|#/
hi link dBlock String

syn match dCoordXYZ /\(\(\(-\|\d\)\+\.\d\+\)\s*\)\{3}/ 
hi link dCoordXYZ Float

syn match dAtom /^\a\{1,2}\d* /
hi link dAtom Typedef

syn match dTitle /^title.*/
hi link dTitle Underlined

"
syn sync minlines=500
let b:current_syntax = 'deMon'
