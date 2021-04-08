set nocompatible
filetype off

" -------------- PLUGINS ---------------

call plug#begin()

Plug 'VundleVim/Vundle.vim',
Plug 'scrooloose/nerdcommenter',
Plug 'jiangmiao/auto-pairs',
Plug 'mg979/vim-visual-multi',
Plug 'alvan/vim-closetag',
Plug 'elzr/vim-json',
Plug 'neomake/neomake',
Plug 'Yggdroot/indentLine',
Plug 'romainl/vim-qf',
Plug 'othree/yajs.vim',
Plug 'tpope/vim-surround',
Plug 'tpope/vim-vinegar',
Plug 'tpope/vim-sleuth',
Plug 'luochen1990/rainbow',
Plug 'junegunn/vader.vim',
Plug 'leafgarland/typescript-vim',
Plug 'peitalin/vim-jsx-typescript',
Plug 'voldikss/vim-floaterm',
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
Plug 'MaxMEllon/vim-jsx-pretty',
Plug 'vim-airline/vim-airline',
Plug 'vim-airline/vim-airline-themes',

" Color
Plug 'sainnhe/vim-color-vanilla-cake',
Plug 'ntk148v/vim-horizon',

" Autocompletion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'},

call plug#end()

set termguicolors

source ~/.config/nvim/coc.vim
source ~/.config/nvim/eslint-local.vim
source ~/.config/nvim/config.vim
source ~/.config/nvim/day.vim


" colorscheme horizon
