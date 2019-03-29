set nocompatible
filetype off

" -------------- PLUGINS ---------------

set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim',
Plugin 'scrooloose/nerdtree',
Plugin 'ryanoasis/vim-devicons',
Plugin 'jiangmiao/auto-pairs',
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' },
Plugin 'ervandew/supertab',
Plugin 'terryma/vim-multiple-cursors',
Plugin 'alvan/vim-closetag',
Plugin 'elzr/vim-json',
Plugin 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] },
Plugin 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] },
Plugin 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] },
Plugin 'neomake/neomake',
Plugin 'Yggdroot/indentLine',
Plugin 'ctrlpvim/ctrlp.vim',
Plugin 'vim-airline/vim-airline',
Plugin 'romainl/vim-qf',
Plugin 'dracula/vim',
Plugin 'othree/yajs.vim',
Plugin 'vim-scripts/JavaScript-Indent'

call vundle#end()

source ~/.config/nvim/config.vim

