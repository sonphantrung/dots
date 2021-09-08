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
    w = {':w!<CR>', 'save file'}, -- set a single command and text
    j = 'split args', -- only set a text for an already configured keymap
    ['<CR>'] = {'@q', 'macro q'}, -- setting a special key
    f = { -- set a nested structure
        name = '+find',
        b = {'Telescope buffers<CR>', 'buffers'},
        h = {'Telescope help_tags<CR>', 'help tags'},
        c = {
            name = '+commands',
            c = {'Telescope commands<CR>', 'commands'},
            h = {'Telescope command_history<CR>', 'history'},
        },
        q = {'<Cmd>Telescope quickfix<CR>', 'quickfix'},
        g = {
            name = '+git',
            g = {'Telescope git_commits<CR>', 'commits'},
            c = {'Telescope git_bcommits<CR>', 'bcommits'},
            b = {'Telescope git_branches<CR>', 'branches'},
            s = {'Telescope git_status<CR>', 'status'},
        },
    }
}

wk.register_keymap('leader', keymap)
