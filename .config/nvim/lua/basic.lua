local o = vim.o
local wo = vim.wo
local bo = vim.bo
local cmd = vim.cmd
-- Global options
o.dir = '/tmp'
o.path = '**'                    --  Searches current directory recursively.
o.cursorline = true
o.mouse = 'a'
o.wildmenu = true                  --  Display all matches when tab complete.
o.incsearch = true                  --  Incremental search
o.hidden = false                     --  Needed to keep multiple buffers open
o.wrap = false
o.backup = false                   -- No auto backups
o.writebackup = false
o.swapfile = false
o.ignorecase = true
o.expandtab = true                  -- Use spaces instead of tabs.
o.smarttab = true                   -- Be smart using tabs ;)
o.shiftwidth = 4                -- One tab == four spaces.
o.tabstop = 4                   -- One tab == four spaces.
o.smartindent = true
o.smartcase = true
o.listchars='nbsp:¬,tab:»·,trail:·,extends:>,precedes:<'
o.encoding = 'utf-8'
o.undofile = true
o.undodir = '/tmp'
o.number = true
o.relativenumber = true      --  Display line numbers
o.clipboard = 'unnamedplus'       --  Copy/paste between Vim and other programs.
o.termguicolors = true
o.numberwidth = 2 -- Thinner 

cmd('colorscheme nvcode')
