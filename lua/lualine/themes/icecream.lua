local colors = require('palette')

return {
	normal = {
		a = { bg = colors.mango, fg = colors.chocolate, gui = 'bold' },
		b = { bg = colors.currant, fg = colors.chocolate },
		c = { bg = colors.fig, fg = colors.chocolate },
		x = { bg = colors.chocolate, fg = colors.fig },
		y = { bg = colors.blackberry, fg = colors.strawberry },
	},
	insert = {
		a = { bg = colors.pistachio, fg = colors.chocolate, gui = 'bold' },
		b = { bg = colors.currant, fg = colors.chocolate },
		c = { bg = colors.fig, fg = colors.chocolate },
		x = { bg = colors.chocolate, fg = colors.fig },
		y = { bg = colors.blackberry, fg = colors.strawberry },
	},
	visual = {
		a = { bg = colors.lichi, fg = colors.chocolate, gui = 'bold' },
		b = { bg = colors.currant, fg = colors.chocolate },
		c = { bg = colors.fig, fg = colors.chocolate },
		x = { bg = colors.chocolate, fg = colors.fig },
		y = { bg = colors.blackberry, fg = colors.strawberry },
	},
	replace = {
		a = { bg = colors.fig, fg = colors.chocolate, gui = 'bold' },
		b = { bg = colors.currant, fg = colors.chocolate },
		c = { bg = colors.fig, fg = colors.chocolate },
		x = { bg = colors.chocolate, fg = colors.fig },
		y = { bg = colors.blackberry, fg = colors.strawberry },
	},
	command = {
		a = { bg = colors.bluemoon, fg = colors.chocolate, gui = 'bold' },
		b = { bg = colors.currant, fg = colors.chocolate },
		c = { bg = colors.fig, fg = colors.chocolate },
		x = { bg = colors.chocolate, fg = colors.fig },
		y = { bg = colors.blackberry, fg = colors.strawberry },
	},
}
