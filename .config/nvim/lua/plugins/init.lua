return {
	{ "lewis6991/impatient.nvim" },
	{ "antoinemadec/FixCursorHold.nvim" },
	{ "junegunn/goyo.vim" },
	{ "junegunn/limelight.vim" },
	{ "tpope/vim-fugitive" },
	{ "junegunn/vim-emoji" },
	{ "airblade/vim-gitgutter" },
	{ "RRethy/vim-hexokinase", build = 'make hexokinase' },
	{ "tpope/vim-surround" },
--	 {"iamcco/markdown-preview.nvim", build = 'cd app && yarn install'};
	{ "kovetskiy/sxhkd-vim" },
	{ "elkowar/yuck.vim" },
	{ "PotatoesMaster/i3-vim-syntax" },
	{'kristijanhusak/orgmode.nvim', config = function()
	        require('orgmode').setup{}
			require('orgmodeconf')
	end
	},
	 { "nvim-treesitter/nvim-treesitter", build = ':TSUpdate' },
	 { "kyazdani42/nvim-web-devicons" },
	 { "romgrk/barbar.nvim" },
	 { "kyazdani42/nvim-tree.lua" },
	 { 'neovim/nvim-lspconfig', config = function()
		require('lsp.cmpe')
		require('lsp.bash')
		require('lsp.lua')
		require('lsp.python')
		require('lsp.go')
		require('lsp.c')
		require('lsp.configure')
	end
	},
	{'hrsh7th/nvim-cmp', dependencies = {
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-vsnip',
	'ray-x/cmp-treesitter'
	}},
	{ 'hrsh7th/vim-vsnip' },
	{ 'rafamadriz/friendly-snippets' },
	{ 'onsails/lspkind-nvim' },
	{ "xiyaowong/nvim-transparent" },
	{ "LunarVim/Colorschemes" },
	{ "RRethy/nvim-base16" },
	{ "cocopon/iceberg.vim" },
	{ "sainnhe/everforest" },
	{ "folke/tokyonight.nvim" },
	{"nvim-telescope/telescope.nvim", dependencies = {"nvim-telescope/telescope-media-files.nvim", {"nvim-telescope/telescope-fzf-native.nvim", build = 'make' }}},
--	 {
--    "williamboman/mason.nvim",
--    dependencies = { "williamboman/mason-lspconfig.nvim" },
--	config = function ()
--		require("mason").setup()
--		require("mason-lspconfig").setup()
--	end
--	}
	{ "nvim-lua/plenary.nvim" },
	{"liuchengxu/vim-which-key", dependencies = "AckslD/nvim-whichkey-setup.lua"},
--	 "glepnir/dashboard-nvim";
 	{"nvim-lualine/lualine.nvim"},

}
