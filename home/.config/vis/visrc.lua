require('vis')


vis.events.subscribe(vis.events.INIT, function()
	vis:command('set tabwidth 2')
	vis:command('set expandtab')
	vis:command('set show-tabs')
	vis:command('set autoindent')
end)


vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set relativenumbers')
	vis:command('set cursorline')
end)

