local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function(use)
	use "lewis6991/impatient.nvim"
	use "wbthomason/packer.nvim";
	use "antoinemadec/FixCursorHold.nvim";
	use "junegunn/goyo.vim";
	use "junegunn/limelight.vim";
	use "tpope/vim-fugitive";
	use "junegunn/vim-emoji";
	use "airblade/vim-gitgutter";
	use { "RRethy/vim-hexokinase", run = 'make hexokinase' };
	use "tpope/vim-surround";
--	use {"iamcco/markdown-preview.nvim", run = 'cd app && yarn install'};
	use "kovetskiy/sxhkd-vim";
	use "elkowar/yuck.vim";
	use "PotatoesMaster/i3-vim-syntax";
	use {'kristijanhusak/orgmode.nvim', config = function()
	        require('orgmode').setup{}
			require('orgmodeconf')
	end
	}
	use {"nvim-treesitter/nvim-treesitter", run = ':TSUpdate'};
	use "kyazdani42/nvim-web-devicons";
	use "romgrk/barbar.nvim";
	use "kyazdani42/nvim-tree.lua";
--	use { 'ms-jpq/coq_nvim', branch = 'coq', run = ':COQdeps' , requires = {{ 'ms-jpq/coq.artifacts', branch = 'artifacts' }}};
--	use { 'neovim/nvim-lspconfig', config = function()
--		require('lsp.cmpe')
--		require('lsp.bash')
--		require('lsp.lua')
--		require('lsp.python')
--		require('lsp.go')
--		require('lsp.c')
--		require('lsp.configure')
--	end
--	};
--	use {'hrsh7th/nvim-cmp', requires = {
--	'hrsh7th/cmp-nvim-lsp',
--	'hrsh7th/cmp-buffer',
--	'hrsh7th/cmp-vsnip',
--	'ray-x/cmp-treesitter'
--	}}
--	use 'hrsh7th/vim-vsnip';
--	use 'rafamadriz/friendly-snippets';
--	use 'onsails/lspkind-nvim';
	use "xiyaowong/nvim-transparent";
	use "LunarVim/Colorschemes";
	use "RRethy/nvim-base16";
	use "cocopon/iceberg.vim";
	use "sainnhe/everforest";
	use "folke/tokyonight.nvim";
	use {"nvim-telescope/telescope.nvim", requires = {"nvim-telescope/telescope-media-files.nvim", {"nvim-telescope/telescope-fzf-native.nvim", run = 'make' }}};
--	use {
--    "williamboman/mason.nvim",
--    requires = { "williamboman/mason-lspconfig.nvim" },
--	config = function ()
--		require("mason").setup()
--		require("mason-lspconfig").setup()
--	end
--	}
	use "nvim-lua/plenary.nvim";
	use {"liuchengxu/vim-which-key", requires = "AckslD/nvim-whichkey-setup.lua"};
--	use "glepnir/dashboard-nvim";
	use "nvim-lualine/lualine.nvim";
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
