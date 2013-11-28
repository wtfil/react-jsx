if exists("g:loaded_react_jsx") || &cp
    finish
endif
let g:loaded_react_jsx = 1

runtime! syntax/javascript.vim
unlet b:current_syntax
syntax include @html syntax/html.vim
syntax region javascriptCode  start="<\/\?" keepend end="\/\?>" contains=@html

syntax match ReactComponent contained "\u\w*"
syntax cluster htmlTagNameCluster add=ReactComponent
hi ReactComponent ctermfg=magenta
