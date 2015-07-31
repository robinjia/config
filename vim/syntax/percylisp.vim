" Vim syntax file
" Language: Percy LispTree

if exists("b:current_syntax")
  finish
endif

set iskeyword=36,42,43,45,46,47,48-57,58,60-62,64-90,97-122,_

syn cluster lispBaseListCluster contains=lispComment,lambdaDCSKey,grammarKey,grammarMacro,grammarVar,lispList,lispNumber
syn cluster lispListCluster contains=@lispBaseListCluster,lispString
syn case ignore

" Comments with #
syn cluster lispCommentGroup contains=lispTodo,@Spell
syn match lispComment "#.*$" contains=@lispCommentGroup
syn keyword lispTodo contained todo todo:

syn region lispList matchgroup=Delimiter start="(" skip="|.\{-}|" matchgroup=Delimiter end=")" contains=@lispListCluster

syn keyword lambdaDCSKey boolean number string date context description error list table url
syn keyword lambdaDCSKey not and or count max min sum avg argmax argmin + - * /
syn keyword lambdaDCSKey call var mark reverse lambda

syn keyword grammarKey def rule when for

syn match grammarMacro "@[^ ()]*"
syn match grammarVar "\$[^ ()]*"

syn region lispString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell
syn match lispNumber "\<-\=\(\.\d\+\|\d\+\(\.\d*\)\=\)\([dDeEfFlL][-+]\=\d\+\)\=\>"
syn match lispParenError ")"

syn sync lines=100

" Actual Hilights
command -nargs=+ HiLink hi def link <args>
HiLink lispComment Comment
HiLink lambdaDCSKey Statement
HiLink grammarKey Keyword
HiLink grammarMacro Macro
HiLink grammarVar Typedef
HiLink lispNumber Number
HiLink lispParenError Error
HiLink lispString String
HiLink lispTodo Todo
delcommand HiLink

let b:current_syntax = "percylisp"
