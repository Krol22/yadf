set nocompatible
filetype off

" -------------- PLUGINS ---------------

call plug#begin()

Plug 'VundleVim/Vundle.vim',
Plug 'scrooloose/nerdcommenter',
Plug 'ryanoasis/vim-devicons',
Plug 'jiangmiao/auto-pairs',
Plug 'terryma/vim-multiple-cursors',
Plug 'alvan/vim-closetag',
Plug 'elzr/vim-json',
Plug 'neomake/neomake',
Plug 'Yggdroot/indentLine',
Plug 'ctrlpvim/ctrlp.vim',
Plug 'vim-airline/vim-airline',
Plug 'romainl/vim-qf',
Plug 'othree/yajs.vim',
Plug 'tpope/vim-surround',
Plug 'tpope/vim-vinegar',
Plug 'tpope/vim-sleuth',
Plug 'tpope/vim-fugitive',
Plug 'benjie/local-npm-bin.vim',
Plug 'luochen1990/rainbow',
Plug 'davidosomething/vim-colors-meh',
Plug 'junegunn/vader.vim',
Plug 'leafgarland/typescript-vim',
Plug 'peitalin/vim-jsx-typescript',
Plug 'calviken/vim-gdscript3',

" Color
Plug 'kamykn/dark-theme.vim',
Plug 'sainnhe/vim-color-vanilla-cake',
Plug 'xdg/vim-darkluma'

" Autocompletion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'},

call plug#end()

source ~/.config/nvim/coc.vim
source ~/.config/nvim/eslint-local.vim
source ~/.config/nvim/config.vim
source ~/.config/nvim/day.vim

