local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'scrooloose/nerdcommenter'
  use 'jiangmiao/auto-pairs'
  use 'mg979/vim-visual-multi'
  use 'alvan/vim-closetag'
  use 'elzr/vim-json'
  use 'neomake/neomake'
  use 'Yggdroot/indentLine'
  use 'romainl/vim-qf'
  use 'othree/yajs.vim'
  use 'tpope/vim-surround'
  use 'tpope/vim-vinegar'
  use 'tpope/vim-sleuth'
  use 'luochen1990/rainbow'
  use 'junegunn/vader.vim'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'
  use 'voldikss/vim-floaterm'
  use {'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end }
  use 'junegunn/fzf.vim'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'junegunn/goyo.vim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Color
  use 'sainnhe/vim-color-vanilla-cake'
  use 'ntk148v/vim-horizon'

  -- Autocompletion
  use {'neoclide/coc.nvim', run = 'yarn install --frozen-lockfile'}
end)
