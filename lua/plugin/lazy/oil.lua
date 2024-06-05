return {
	"stevearc/oil.nvim",
	opts = {
		default_file_explorer = true,
		columns = {},
		skip_confirm_for_simple_edits = true,
		lsp_file_methods = {
			-- Time to wait for LSP file operations to complete before skipping
			timeout_ms = 1000,
			-- Set to true to autosave buffers that are updated with LSP willRenameFiles
			-- Set to "unmodified" to only save unmodified buffers
			autosave_changes = true,
		},
		keymaps = {
			["g?"] = "actions.show_help",
			["<CR>"] = false,
			["gd"] = "actions.select",
			["<C-s>"] = "actions.select_vsplit",
			["<C-h>"] = "actions.select_split",
			["<C-t>"] = false,
			["<C-p>"] = false,
			["<C-c>"] = false,
			["<C-[>"] = "actions.close",
			["q"] = "actions.close",
			["<C-l>"] = "actions.refresh",
			["<leader>ee"] = "actions.refresh",
			["gu"] = "actions.parent",
			["_"] = "actions.open_cwd",
			["`"] = "actions.cd",
			["~"] = "actions.tcd",
			["gs"] = "actions.change_sort",
			["gx"] = "actions.open_external",
			["g."] = "actions.toggle_hidden",
			["g\\"] = "actions.toggle_trash",
		},
		view_options = {
			show_hidden = true,
		},
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
