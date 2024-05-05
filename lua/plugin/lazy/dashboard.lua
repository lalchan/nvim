return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = {
		disable_move = true, --  default is false disable move keymap for hyper
		shortcut_type = "letter", --  shorcut type 'letter' or 'number'
		config = {
			shortcut = {
				{
					icon = " ",
					icon_hl = "@variable",
					desc = "Files",
					group = "Label",
					action = "Telescope find_files",
					key = "f",
				},
				{
					icon = " ",
					icon_hl = "@variable",
					desc = "Explorer",
					group = "Label",
					action = "netrw",
					key = "e",
				},
				{
					icon = " ",
					icon_hl = "@session",
					desc = "Last Session",
					group = "Session",
					action = 'require("persistence").load()',
					key = "s",
				},
			},
		},
	},
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
