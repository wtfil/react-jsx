if &ft != 'javascript'
    finish
endif
if exists("g:loaded_react_jsx") || &cp
    finish
endif
let g:loaded_react_jsx = 1

runtime! syntax/javascript.vim
unlet b:current_syntax
syn include @html syntax/html.vim
syn region javascriptCode  start="<\/\?" keepend end="\/\?>" contains=@html

syn match ReactInlineCode contained "={[^}]*}"hs=s+1 " todo: better highlighting
syn match ReactComponent contained "\u\w*"
syn cluster htmlArgCluster add=ReactInlineCode
syn cluster htmlTagNameCluster add=ReactComponent
hi ReactComponent ctermfg=magenta
hi ReactInlineCode ctermfg=lightgreen
