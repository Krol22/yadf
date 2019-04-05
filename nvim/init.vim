set nocompatible
filetype off

" -------------- PLUGINS ---------------

call plug#begin()

Plug 'VundleVim/Vundle.vim',
Plug 'scrooloose/nerdtree',
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
Plug 'tpope/vim-sleuth',
Plug 'benjie/local-npm-bin.vim',

" Autocompletion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'},

" Color schemes
Plug 'dracula/vim',
Plug 'Drogglbecher/vim-moonscape',
Plug 'ciaranm/inkpot',
Plug 'julien/vim-miniml',
Plug 'anned20/vimsence',

call plug#end()

source ~/.config/nvim/coc.vim
source ~/.config/nvim/eslint-local.vim
source ~/.config/nvim/config.vim

