local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end


return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'kabouzeid/nvim-lspinstall'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'joshdick/onedark.vim'
	use {
	  'hoob3rt/lualine.nvim',
		  requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use 'ryanoasis/vim-devicons'
	use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use {
	    'kyazdani42/nvim-tree.lua',
	    requires = 'kyazdani42/nvim-web-devicons'
	}
    use "glepnir/dashboard-nvim"
end)
