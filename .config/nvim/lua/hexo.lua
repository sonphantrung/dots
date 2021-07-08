vim.g.Hexokinase_highlighters = {'backgroundfull'}

vim.g.Hexokinase_optInPatterns = {
     'full_hex',
     'triple_hex',
     'rgb',
     'rgba',
     'hsl',
     'hsla',
     'colour_names',
 }

vim.g.Hexokinase_refreshEvents = {'InsertLeave', 
'TextChanged',}

vim.cmd('autocmd vimenter * HexokinaseTurnOn')
