local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- basic setup
  use 'tpope/vim-vinegar'
  use 'tpope/vim-surround'
  use 'tpope/vim-sleuth'
  use 'junegunn/goyo.vim'
  use 'scrooloose/nerdcommenter'
  use 'windwp/nvim-autopairs'
  use 'alvan/vim-closetag'
  use 'Yggdroot/indentLine'
  use 'mg979/vim-visual-multi'
  use 'romainl/vim-qf'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-telescope/telescope.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'

  -- completion
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'

  -- coding
  use 'elzr/vim-json'
  use 'othree/yajs.vim'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'habamax/vim-godot'
  use {
    'styled-components/vim-styled-components',
    branch = 'main',
  }

  -- apperance
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'embark-theme/vim'
end)
