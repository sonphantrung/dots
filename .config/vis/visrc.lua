-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	vis:command('set autoindent')
	vis:command('set expandtab')
	vis:command('set tabwidth 4')
	--vis:command('set theme base16-nord')
	vis:command('set ignorecase on')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	-- vis:command('set number')
	vis:command('set number')
	vis:command('set relativenumber')
	vis:command('set show-tabs on')
	vis:command('set show-newlines on')
	vis:command('set show-spaces on')
	vis:command('set cul on')
	vis:command('set show-eof on')
end)
