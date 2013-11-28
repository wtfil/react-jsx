if exists("g:loaded_react_jsx") || &cp
    finish
endif
let g:loaded_react_jsx = 1

au FileType javascript runtime! syntax/javascript.vim
au FileType pythonript unlet b:current_syntax
au FileType pythonript syntax include @html syntax/html.vim
au FileType pythonript syntax region javascriptCode  start="<\/\?" keepend end="\/\?>" contains=@html
au FileType pythonript 
au FileType pythonript syntax match ReactComponent contained "\u\w*"
au FileType pythonript syntax cluster htmlTagNameCluster add=ReactComponent
au FileType pythonript hi ReactComponent ctermfg=magenta
