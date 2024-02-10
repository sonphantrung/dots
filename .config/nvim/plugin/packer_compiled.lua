-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/goobah/.cache/nvim/packer_hererocks/2.1.1699801871/share/lua/5.1/?.lua;/home/goobah/.cache/nvim/packer_hererocks/2.1.1699801871/share/lua/5.1/?/init.lua;/home/goobah/.cache/nvim/packer_hererocks/2.1.1699801871/lib/luarocks/rocks-5.1/?.lua;/home/goobah/.cache/nvim/packer_hererocks/2.1.1699801871/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/goobah/.cache/nvim/packer_hererocks/2.1.1699801871/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  Colorschemes = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/Colorschemes",
    url = "https://github.com/LunarVim/Colorschemes"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  everforest = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["i3-vim-syntax"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/i3-vim-syntax",
    url = "https://github.com/PotatoesMaster/i3-vim-syntax"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/limelight.vim",
    url = "https://github.com/junegunn/limelight.vim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-base16"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/nvim-base16",
    url = "https://github.com/RRethy/nvim-base16"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-whichkey-setup.lua"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/nvim-whichkey-setup.lua",
    url = "https://github.com/AckslD/nvim-whichkey-setup.lua"
  },
  ["orgmode.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\1K\0\1\0\16orgmodeconf\nsetup\forgmode\frequire\0" },
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/orgmode.nvim",
    url = "https://github.com/kristijanhusak/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["sxhkd-vim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/sxhkd-vim",
    url = "https://github.com/kovetskiy/sxhkd-vim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-emoji"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/vim-emoji",
    url = "https://github.com/junegunn/vim-emoji"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-hexokinase"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/vim-hexokinase",
    url = "https://github.com/RRethy/vim-hexokinase"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/vim-which-key",
    url = "https://github.com/liuchengxu/vim-which-key"
  },
  ["yuck.vim"] = {
    loaded = true,
    path = "/home/goobah/.local/share/nvim/site/pack/packer/start/yuck.vim",
    url = "https://github.com/elkowar/yuck.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring("\27LJ\2\nQ\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\1K\0\1\0\16orgmodeconf\nsetup\forgmode\frequire\0", "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
