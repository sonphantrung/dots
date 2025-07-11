require('nvim-tree').setup({
  -- disables netrw completely
  disable_netrw       = true,
  -- hijack netrw window on startup
  hijack_netrw        = true,
  -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
  open_on_tab         = false,
  -- hijacks new directory buffers when they are opened.
  -- hijack the cursor in the tree to put it at the start of the filename
  hijack_cursor       = false,
  -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
  update_cwd          = false,
  -- show lsp diagnostics in the signcolumn
  diagnostics = {
	enable = true
  },
  renderer = {
	icons = {
	 glyphs = {
      default = "",
      symlink = "",
      git = {
         deleted = "",
         ignored = "◌",
         renamed = "➜",
         staged = "✓",
         unmerged = "",
         unstaged = "✗",
         untracked = "★",
      },
      folder = {
         arrow_open = "",
         arrow_closed = "",
         default = "",
         empty = "", -- 
         empty_open = "",
         open = "",
         symlink = "",
         symlink_open = "",
      },
--      lsp = {
--          hint = "",
--          info = "",
--          warning = "",
--          error = "",
--       },
  	  },
	 show = {
       folder = true,
       folder_arrow = true,
       file = true,
       git = true,
	 }
    }
  },
  -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
  update_focused_file = {
    -- enables the feature
    enable      = false,
    -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
    -- only relevant when `update_focused_file.enable` is true
    update_cwd  = false,
    -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
    -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
    ignore_list = {}
  },
  -- configuration options for the system open command (`s` in the tree by default)
  system_open = {
    -- the command to run this, leaving nil should work in most cases
    cmd  = nil,
    -- the command arguments as a list
    args = {}
  },
  actions = {
    open_file = {
      resize_window = true,
    },
   },
  view = {
    -- width of the window, can be either a number (columns) or a string in `%`
    width = 30,
    -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    side = 'left',
    -- if true the tree will resize itself after opening a file
  }
})
