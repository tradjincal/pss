" Vim syntax file
" Language: pss

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword pssKeyword bind
syn keyword pssKeyword abstract
syn keyword pssKeyword component
syn keyword pssKeyword activity
syn keyword pssKeyword assert
syn keyword pssKeyword body
syn keyword pssKeyword chandle
syn keyword pssKeyword compile
syn keyword pssKeyword declaration
syn keyword pssKeyword default
syn keyword pssKeyword dynamic
syn keyword pssKeyword exec
syn keyword pssKeyword export
syn keyword pssKeyword file
syn keyword pssKeyword has
syn keyword pssKeyword header
syn keyword pssKeyword iff
syn keyword pssKeyword ignore_bins
syn keyword pssKeyword illegal_bins
syn keyword pssKeyword init
syn keyword pssKeyword instance
syn keyword pssKeyword match
syn keyword pssKeyword option
syn keyword pssKeyword override
syn keyword pssKeyword parallel
syn keyword pssKeyword post_solve
syn keyword pssKeyword pre_solve
syn keyword pssKeyword private
syn keyword pssKeyword protected
syn keyword pssKeyword public
syn keyword pssKeyword repeat
syn keyword pssKeyword run_end
syn keyword pssKeyword run_start
syn keyword pssKeyword schedule
syn keyword pssKeyword select
syn keyword pssKeyword sequence
syn keyword pssKeyword share
syn keyword pssKeyword solve
syn keyword pssKeyword state
syn keyword pssKeyword super
syn keyword pssKeyword target
syn keyword pssKeyword type
syn keyword pssKeyword type_option
syn keyword pssKeyword unique

syn keyword pssStatement action
syn keyword pssStatement import
syn keyword pssStatement class
syn keyword pssStatement covergroup
syn keyword pssStatement coverpoint
syn keyword pssStatement cross
syn keyword pssStatement do
syn keyword pssStatement else
syn keyword pssStatement extend
syn keyword pssStatement foreach
syn keyword pssStatement function
syn keyword pssStatement if
syn keyword pssStatement in
syn keyword pssStatement typedef
syn keyword pssStatement while
syn keyword pssStatement with

syn keyword pssType input
syn keyword pssType output
syn keyword pssType inout
syn keyword pssType rand
syn keyword pssType int
syn keyword pssType bit
syn keyword pssType bool
syn keyword pssType lock
syn keyword pssType pool
syn keyword pssType const
syn keyword pssType enum
syn keyword pssType buffer
syn keyword pssType bins
syn keyword pssType resource
syn keyword pssType constraint
syn keyword pssType memory
syn keyword pssType static
syn keyword pssType stream
syn keyword pssType string
syn keyword pssType symbol
syn keyword pssType void

syn keyword pssConstant false
syn keyword pssConstant true

syn region pssDescBlock start="{" end="}" fold transparent


syn keyword pssTodo contained TODO FIXME NOTE
syn region pssComment   start="//" skip="\\$" end="$" keepend
syn region pssComment   matchgroup=cCommentStart start="/\*" end="\*/" fold contains=pssTodo

" identifier \w+
" escaped identifier \\\W+

syn match pssPackageIdentifier contained '[a-zA-Z_][a-zA-Z0-9_]*' display contained
syn keyword pssStatement package nextgroup=pssPackageIdentifier skipwhite


let b:current_syntax = "pss"

 hi def link pssTodo                Todo
 hi def link pssComment             Comment
 hi def link pssStatement           Statement
 hi def link pssType                Type
 hi def link pssConstant            Constant
 hi def link pssPreProc             PreProc
 hi def link pssConstant            Constant
 hi def link pssKeyword             Keyword
 hi def link pssFunction            Function
 hi def link pssPackageIdentifier   Function
