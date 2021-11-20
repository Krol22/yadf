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
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'
  use 'Yggdroot/indentLine'
  use 'mg979/vim-visual-multi'
  use 'romainl/vim-qf'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'

  -- lsp
  use 'neovim/nvim-lspconfig'

  -- completion
  use { 
    'ms-jpq/coq_nvim',
    branch = 'coq'
  }
  use { 
    'ms-jpq/coq.thirdparty',
    branch = '3p'
  }

  -- code actions
  use {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  }

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
  use 'leafOfTree/vim-svelte-plugin'

  -- apperance
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'embark-theme/vim'
end)