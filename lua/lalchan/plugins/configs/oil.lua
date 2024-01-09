return {
	'stevearc/oil.nvim',
	opts = {
		default_file_explorer = true,
		columns = {},
		lsp_rename_autosave = true,
		view_options = {
			show_hidden = true
		},
		keymaps = {
			["q"] = "actions.close",
			["gd"] = "actions.select",
			["gu"] = "actions.parent",
			["~"] = "actions.open_cwd",
			["<leader>e"] = "actions.refresh",
		},
		float = {
			-- Padding around the floating window
			padding = 10,
			max_width = 0,
			max_height = 0,
			border = "rounded",
			win_options = {
				winblend = 0,
			},
			-- This is the config that will be passed to nvim_open_win.
			-- Change values here to customize the layout
			override = function(conf)
				return conf
			end,
		},
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
