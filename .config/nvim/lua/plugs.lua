local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require "paq" {
    "savq/paq-nvim";
    "antoinemadec/FixCursorHold.nvim";
    "junegunn/goyo.vim";
    "junegunn/limelight.vim";
    "tpope/vim-fugitive";
    "junegunn/vim-emoji";
    "airblade/vim-gitgutter";
    { "RRethy/vim-hexokinase", run=fn.system({'make', '-C', install_path .. '/vim-hexokinase', 'hexokinase'}) };
    "tpope/vim-surround";
    "suan/vim-instant-markdown";
    "PotatoesMaster/i3-vim-syntax";
    "norcalli/nvim-colorizer.lua";
    "ChristianChiarulli/nvcode-color-schemes.vim";
    "nvim-treesitter/nvim-treesitter";
    "kyazdani42/nvim-web-devicons";
    "romgrk/barbar.nvim";
    "kyazdani42/nvim-tree.lua";
    "neovim/nvim-lspconfig";
    "onsails/lspkind-nvim";
    "hrsh7th/vim-vsnip";
    "rafamadriz/friendly-snippets";
    "hrsh7th/nvim-compe";
    "sainnhe/everforest";
    "nvim-telescope/telescope-media-files.nvim";
    "nvim-telescope/telescope.nvim";
    {"nvim-telescope/telescope-fzf-native.nvim", run=fn.system({'make', '-C', install_path .. '/telescope-fzf-native.nvim'})};
    "nvim-lua/plenary.nvim";
    "liuchengxu/vim-which-key";
    "AckslD/nvim-whichkey-setup.lua";
    "glepnir/dashboard-nvim";
    "shadmansaleh/lualine.nvim";
}
