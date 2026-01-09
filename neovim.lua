return {
	{
		"nlknguyen/papercolor-theme",
		name = "PaperColor",
		priority = 1000,
		options = {},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "PaperColor",
		},
		init = function()
			vim.o.background = "light"
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			opts.options = opts.options or {}
			opts.options.theme = {
				normal = {
					a = { bg = "#0087af", fg = "#eeeeee" },
					b = { bg = "#e4e4e4", fg = "#444444" },
					c = { bg = "#eeeeee", fg = "#444444" },
				},
				insert = {
					a = { bg = "#005f87", fg = "#eeeeee" },
				},
				visual = {
					a = { bg = "#5f8700", fg = "#eeeeee" },
				},
				replace = {
					a = { bg = "#af0000", fg = "#eeeeee" },
				},
				inactive = {
					a = { bg = "#e4e4e4", fg = "#878787" },
					b = { bg = "#e4e4e4", fg = "#878787" },
					c = { bg = "#e4e4e4", fg = "#878787" },
				},

				-- Fix git/diff specifically
				diff = {
					added = { fg = "#008700", bg = "#eeeeee" },
					modified = { fg = "#5f8700", bg = "#eeeeee" },
					removed = { fg = "#af0000", bg = "#eeeeee" },
				},

				-- Fix diagnostic colors (last command messages, errors, warnings)
				diagnostics = {
					error = { fg = "#af0000", bg = "#eeeeee" },
					warn = { fg = "#d75f00", bg = "#eeeeee" },
					info = { fg = "#0087af", bg = "#eeeeee" },
					hint = { fg = "#005f87", bg = "#eeeeee" },
				},
			}
		end,
	},
}
