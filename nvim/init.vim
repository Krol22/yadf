set nocompatible
filetype off

" -------------- PLUGINS ---------------

call plug#begin()

Plug 'tpope/vim-vinegar',
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
Plug 'tpope/vim-sleuth',
Plug 'luochen1990/rainbow',
Plug 'junegunn/vader.vim',
Plug 'leafgarland/typescript-vim',
Plug 'peitalin/vim-jsx-typescript',
Plug 'voldikss/vim-floaterm',
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
Plug 'MaxMEllon/vim-jsx-pretty',
Plug 'junegunn/goyo.vim',
Plug 'habamax/vim-godot',
Plug 'vim-airline/vim-airline',
Plug 'vim-airline/vim-airline-themes',
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'leafOfTree/vim-svelte-plugin',

" Color
Plug 'sainnhe/vim-color-vanilla-cake',
Plug 'ntk148v/vim-horizon',
Plug 'embark-theme/vim',

" Autocompletion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'},

call plug#end()

set termguicolors

source ~/.config/nvim/coc.vim
source ~/.config/nvim/eslint-local.vim
source ~/.config/nvim/config.vim
source ~/.config/nvim/day.vim
