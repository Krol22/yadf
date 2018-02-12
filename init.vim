set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim',
Plugin 'scrooloose/nerdtree',
Plugin 'ryanoasis/vim-devicons',
Plugin 'jiangmiao/auto-pairs',
Plugin 'mhinz/vim-startify',

" dev
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax',
Plugin 'terryma/vim-multiple-cursors',
Plugin 'othree/javascript-libraries-syntax.vim',
Plugin 'alvan/vim-closetag',
Plugin 'mattn/emmet-vim',

" other
Plugin 'neomake/neomake',
Plugin 'Yggdroot/indentLine',
Plugin 'ctrlpvim/ctrlp.vim',
Plugin 'vim-airline/vim-airline',

" ncm
Plugin 'roxma/nvim-completion-manager',
Plugin 'roxma/nvim-cm-tern',  {'do': 'npm install'},
Plugin 'calebeby/ncm-css'

call vundle#end()

filetype plugin indent on

" NERD TREE 

imap <C-b> <c-[> :NERDTreeToggle<CR>
nmap <C-b> :NERDTreeToggle<CR>
vmap <C-b> :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2
let NERDTreeShowBookmarks = 0
let NERDTreeShowLineNumbers = 1
set mouse=a

autocmd FileType nerdtree setlocal relativenumber

" PANES MOVEMENT

nmap <silent> <C-h> :winc h<CR>
nmap <silent> <C-j> :winc j<CR>
nmap <silent> <C-k> :winc k<CR>
nmap <silent> <C-l> :winc l<CR>

nmap <silent> tn :tabnew<Space>
nmap <silent> tk :tabnext<CR>
nmap <silent> tj :tabprev<CR>

nmap <silent> <C-q> :q <CR>
nmap <silent> <C-s> :w <CR>

" OTHER 

set number
set relativenumber
set tabstop=4 expandtab shiftwidth=4
set encoding=utf8

set incsearch

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:indentLine_char = '|'
let g:used_javascript_libs = 'angularjs, jasmine, angularui, angularuirouter, jquery'

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" NEOMAKE

autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2

let g:neomake_javascript_jshint_maker = {
      \ 'args': ['--verbose'],
      \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
      \ }

let g:neomake_javascript_enabled_makers = ['jshint']
let g:neomake_html_enabled_makers = ['htmlhint']
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" COLOR 

colorscheme TrippingRobot
