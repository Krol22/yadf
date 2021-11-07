filetype plugin indent on

" -------------- MAPPINGS ---------------

" panes
nmap <silent> <C-h> :winc h<CR>
nmap <silent> <C-j> :winc j<CR>
nmap <silent> <C-k> :winc k<CR>
nmap <silent> <C-l> :winc l<CR>

" save & quit
nmap <silent> <C-q> :q <CR>
nmap <silent> <C-s> :w <CR>

" exit from terminal
tnoremap <C-R> <C-\><C-n>

" open fzf
nmap <silent> <C-P> :Files<CR>

" comment in normal and visual mode
nmap <C-_> <leader>c<space>
vmap <C-_> <leader>c<space>

" search
nnoremap <C-f> :CocSearch<space>

" show next matched string at the center of screen
nnoremap n nzz
nnoremap N Nzz

nmap <C-1> :CocCommand prettier.formatFile
nnoremap <C-a> :CocAction<CR>

nnoremap <C-e> :CocList -A demo_list<CR>

" -------------- CONFIGS ---------------

" use mouse
set mouse=a

" line numbers
set number
set relativenumber

" indent
set tabstop=2 expandtab shiftwidth=2
let g:indentLine_char = '|'

" encoding
set encoding=utf8

" search 
set incsearch
set ignorecase 

" swp files save dir
set swapfile
set dir=~/.tmp

" persistent undo
set undofile
set undodir=~/.tmp

" different corsor for inser mode
set guicursor+=i:hor20-Cursor/lCursor

" autoreload file after :e
set autoread

" italics in tmux
set t_ZH=^[[3m
set t_ZR=^[[23m

" remove comments in new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" json quotation marks
let g:vim_json_syntax_conceal = 0

" ctrl_p config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" python configuration
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" enable rainbow parentheses
let g:rainbow_active = 1

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" -------------- NEOMAKE ---------------

autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2

" let g:neomake_javascript_enabled_makers = ['eslint']
" let b:neomake_javascript_eslint_maker = {'exe': 'npx eslint'}
let g:neomake_javascript_enabled_makers = []

let g:neomake_html_enabled_makers = ['htmlhint']
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_maker = {'exe': 'clang'}

let g:neomake_typescript_enabled_makers = ['tslint']

"auto close errors window
let g:qf_loclist_window_bottom = 0

" let g:SuperTabClosePreviewOnPopupClose = 1

" --------------- COMMENTS -----------------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" --------------- FZF -----------------
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(&lines * 0.4) " 40% of screen
  let width = float2nr(&columns * 0.7) " 70% of screen
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = float2nr(&lines * 0.1) " space to top: 10%

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'anchor': 'NW',
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

