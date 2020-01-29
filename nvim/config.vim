filetype plugin indent on

" use mouse
" set mouse=a

" add relativenumbers to nerdtree
autocmd FileType nerdtree setlocal relativenumber

" -------------- NAVIGATION ---------------

" panes
nmap <silent> <C-h> :winc h<CR>
nmap <silent> <C-j> :winc j<CR>
nmap <silent> <C-k> :winc k<CR>
nmap <silent> <C-l> :winc l<CR>

" tabs
nmap <silent> tn :tabnew<Space>
nmap <silent> tk :tabnext<CR>
nmap <silent> tj :tabprev<CR>

" save & quit
nmap <silent> <C-q> :q <CR>
nmap <silent> <C-s> :w <CR>

" exit from terminal
tnoremap <C-R> <C-\><C-n>

" -------------- OTHER ---------------

" line numbers
set number
set relativenumber

" indent
" set tabstop=2 expandtab shiftwidth=2
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

set guicursor+=i:hor20-Cursor/lCursor

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

" -------------- NEOMAKE ---------------

autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2

let g:neomake_javascript_enabled_makers = ['eslint']
let b:neomake_javascript_eslint_exe = GetNpmBin('eslint')

let g:neomake_html_enabled_makers = ['htmlhint']
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_maker = {'exe': 'clang'}

"auto close errors window
let g:qf_loclist_window_bottom = 0

" AUTOCOMPLETE
" inoremap <expr><TAB> pumvisible() ? "\<C-n>": "<TAB>"

let g:SuperTabClosePreviewOnPopupClose = 1

" --------------- COMMENTS -----------------

nmap <C-_> <leader>c<space>
vmap <C-_> <leader>c<space>

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
