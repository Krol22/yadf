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
  use {'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end }
  use 'junegunn/fzf.vim'
  use 'scrooloose/nerdcommenter'
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'
  use 'Yggdroot/indentLine'
  use 'mg979/vim-visual-multi'
  use 'romainl/vim-qf'

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
