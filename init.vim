set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim',
Plugin 'scrooloose/nerdtree',
Plugin 'ryanoasis/vim-devicons',
Plugin 'jiangmiao/auto-pairs',
Plugin 'mhinz/vim-startify',

Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' },
Plugin 'ervandew/supertab',

" dev
Plugin 'terryma/vim-multiple-cursors',
Plugin 'alvan/vim-closetag',
Plugin 'mattn/emmet-vim',
Plugin 'elzr/vim-json',

Plugin 'SirVer/ultisnips',
Plugin 'honza/vim-snippets',
Plugin 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] },
Plugin 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] },
Plugin 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] },

" other
Plugin 'neomake/neomake',
Plugin 'Yggdroot/indentLine',
Plugin 'ctrlpvim/ctrlp.vim',
Plugin 'vim-airline/vim-airline',
Plugin 'dracula/vim',

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

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_html_enabled_makers = ['htmlhint']
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" AUTOCOMPLETE

let g:deoplete#enable_at_startup = 1

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
    \ 'tern#Complete',
    \ 'jspc#omni'
\]

set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistenr']

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB> pumvisible() ? "\<C-n>": "/<TAB>"

let g:SuperTabClosePreviewOnPopupClose = 1

" COLOR 

" colorscheme TrippingRobot
colorscheme dracula

