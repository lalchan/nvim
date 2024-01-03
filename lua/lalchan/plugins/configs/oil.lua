return {
	'stevearc/oil.nvim',
	opts = {
		columns = {},
		lsp_rename_autosave = true,
		view_options = {
			show_hidden = true
		},
		float = {
			border = "none",
			padding = 10,
		},
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
