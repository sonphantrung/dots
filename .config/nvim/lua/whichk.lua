local wk = require('whichkey_setup')

vim.g.which_key_sep = '→'

require("whichkey_setup").config{
    hide_statusline = false,
    default_keymap_settings = {
        silent=true,
        noremap=true,
    },
    default_mode = 'n',
}

local keymap = {
    j = 'split args', -- only set a text for an already configured keymap
    ['<CR>'] = {'@q', 'macro q'}, -- setting a special key
    w = {
		name = '+windows';
		w = {'<Cmd>w<CR>', 'save file'};
		v = {'<Cmd>vs<CR>', 'vsplit'};
		h = {'<Cmd>sp<CR>', 'split'};
	},
    f = { -- set a nested structure
        name = '+find',
        b = {'<Cmd>Telescope buffers<CR>', 'buffers'},
        h = {'<Cmd>Telescope help_tags<CR>', 'help tags'},
        c = {
            name = '+commands',
            c = {'<Cmd>Telescope commands<CR>', 'commands'},
            h = {'<Cmd>Telescope command_history<CR>', 'history'},
        },
        q = {'<Cmd>Telescope quickfix<CR>', 'quickfix'},
        g = {
            name = '+git',
            g = {'<Cmd>Telescope git_commits<CR>', 'commits'},
            c = {'<Cmd>Telescope git_bcommits<CR>', 'bcommits'},
            b = {'<Cmd>Telescope git_branches<CR>', 'branches'},
            s = {'<Cmd>Telescope git_status<CR>', 'status'},
        },
    }
}

wk.register_keymap('leader', keymap)
