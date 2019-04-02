function! neomake#makers#ft#javascript#prettier() abort
    return {
        \ 'args': ['--config=.prettierrc'],
        \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
\ '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
        \ 'output_stream': 'stdout'
    }
endfunction
