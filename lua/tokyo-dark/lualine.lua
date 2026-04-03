local M = {}

function M.theme(palette)
	return {
		normal = {
			a = {
				fg = palette.bg,
				bg = palette.magenta,
				gui = "bold",
			},
			b = {
				fg = palette.fg,
				bg = palette.ui.bg_statusline or palette.bg,
			},
			c = {
				fg = palette.fg,
				bg = palette.bg,
			},
		},
		insert = {
			a = {
				fg = palette.bg,
				bg = palette.green1,
				gui = "bold",
			},
		},
		visual = {
			a = {
				fg = palette.bg,
				bg = palette.blue2,
				gui = "bold",
			},
		},
		replace = {
			a = {
				fg = palette.bg,
				bg = palette.red1 or palette.magenta,
				gui = "bold",
			},
		},
		inactive = {
			a = {
				fg = palette.comment,
				bg = palette.bg,
			},
			b = {
				fg = palette.comment,
				bg = palette.bg,
			},
			c = {
				fg = palette.comment,
				bg = palette.bg,
			},
		},
	}
end

return M
