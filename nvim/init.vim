set nocompatible
filetype off

" -------------- PLUGINS ---------------

call plug#begin()

Plug 'neomake/neomake',

" Color
Plug 'sainnhe/vim-color-vanilla-cake',
Plug 'ntk148v/vim-horizon',

" Autocompletion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'},

call plug#end()

source ~/.config/nvim/coc.vim
source ~/.config/nvim/eslint-local.vim
source ~/.config/nvim/config.vim
source ~/.config/nvim/day.vim
