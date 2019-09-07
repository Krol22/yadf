nmap <silent> <C-g> :call ChangeTheme() <CR>
vmap <silent> <C-g> :call ChangeTheme() <CR>

let &background = "dark"
let s:dark_colorscheme = get(g:, 'dark_colorscheme', 'meh')
let s:light_colorscheme = get(g:, 'light_colorscheme', 'vanilla-cake')

:function ChangeTheme()
  :if (&background == "light")
    :execute "colorscheme " . s:dark_colorscheme
    :let &background = "dark"
  :else 
    :colorscheme vanilla-cake
    :execute "colorscheme " . s:light_colorscheme
    :let &background = "light"
  :endif
:endfunction

:execute "colorscheme ".s:dark_colorscheme

