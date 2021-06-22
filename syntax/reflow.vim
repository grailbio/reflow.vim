" Vim syntax file
" Language: Reflow
" Maintainer: pboyapalli@grailbio.com
" Latest Revision: 24 July 2020
" Reference: https://sg.eng.grail.com/grail/grail/-/blob/go/src/github.com/grailbio/reflow/LANGUAGE.md


" Language
syntax keyword reflowKeyword Main val image mem cpu param intern extern
syntax keyword reflowStatement exec func make reduce panic
syntax keyword reflowStructure switch case
syntax match reflowPreprocessor "@\w*"                  " matches the word after '@', like '@requires'
syntax match reflowPreprocessor "{{.*}}"                " matches these things: '{{out}}'

syntax match swiftOperator "\v\~\>"
syntax match reflowOperator "\v\s+!"
syntax match reflowOperator "\v\%"
syntax match reflowOperator "\v\&"
syntax match reflowOperator "\v\*"
syntax match reflowOperator "\v-"
syntax match reflowOperator "\v\+"
syntax match reflowOperator "\v\="
syntax match reflowOperator "\v\|"
syntax match reflowOperator "\v\/"
syntax match reflowOperator "\v\<"
syntax match reflowOperator "\v\>"

" Types
syntax region reflowString start=/"/ skip=/\\"/ end=/"/ oneline
syntax match reflowNumber "\v<\d+>"                     " matches whole numbers like 10
syntax match reflowNumber "\v<\d+\.\d+>"                " matches decimal numbers like 3.14
syntax match reflowNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"   " matches notation like 3e10, 0.5E-8
syntax keyword reflowBoolean true false
syntax keyword reflowConstant KiB MiB GiB TiB

" Comments
syntax keyword reflowTodo contained TODO todo NOTE note
syntax match reflowComment "//.*$" contains=reflowTodo



" Highlighting
highlight default link reflowKeyword Keyword
highlight default link reflowStatement Statement
highlight default link reflowStructure Structure
highlight default link reflowAttribute PreProc
highlight default link reflowOperator Operator
highlight default link reflowImport Include
highlight default link reflowType Type
highlight default link reflowPreprocessor PreProc

highlight default link reflowString String
highlight default link reflowNumber Number
highlight default link reflowBoolean Boolean
highlight default link reflowConstant Constant

highlight default link reflowTodo Todo
highlight default link reflowComment Comment


