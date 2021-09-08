local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function(use)
	use "wbthomason/packer.nvim";
	use "antoinemadec/FixCursorHold.nvim";
	use "junegunn/goyo.vim";
	use "junegunn/limelight.vim";
	use "tpope/vim-fugitive";
	use "junegunn/vim-emoji";
	use "airblade/vim-gitgutter";
	use { "RRethy/vim-hexokinase", run = 'make hexokinase' };
	use "tpope/vim-surround";
	use {"iamcco/markdown-preview.nvim", run = 'cd app && yarn install'};
	use "PotatoesMaster/i3-vim-syntax";
	use "nvim-treesitter/nvim-treesitter";
	use "kyazdani42/nvim-web-devicons";
	use "romgrk/barbar.nvim";
	use "kyazdani42/nvim-tree.lua";
	use "neovim/nvim-lspconfig";
	use { 'ms-jpq/coq_nvim', branch = 'coq', run = ':COQdeps' };
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' };
	use "ChristianChiarulli/nvcode-color-schemes.vim";
	use "sainnhe/everforest";
	use "folke/tokyonight.nvim"
	use "nvim-telescope/telescope-media-files.nvim";
	use "nvim-telescope/telescope.nvim";
	use {"nvim-telescope/telescope-fzf-native.nvim", run = 'make' };
	use "nvim-lua/plenary.nvim";
	use "liuchengxu/vim-which-key";
	use "AckslD/nvim-whichkey-setup.lua";
	use "glepnir/dashboard-nvim";
	use "shadmansaleh/lualine.nvim";
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
