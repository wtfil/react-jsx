runtime! syntax/javascript.vim
unlet b:current_syntax
syntax include @html syntax/html.vim
syntax region javascriptCode  start="<\/\?" keepend end="\/\?>" contains=@html

syntax match ReactComponent contained "^[A-Z]\w*"
syntax cluster htmlTagNameCluster add=ReactComponent
hi ReactComponent ctermfg=red
