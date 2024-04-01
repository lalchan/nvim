return {
	"stevearc/oil.nvim",
	opts = {
		columns = {},
		keymaps = {
			["g?"] = "actions.show_help",
			["<CR>"] = "actions.select",
			["<C-v>"] = "actions.select_vsplit",
			["<C-h>"] = "actions.select_split",
			["<C-p>"] = "actions.preview",
			["<C-c>"] = "actions.close",
			["<C-t>"] = false,
			["gu"] = "actions.parent",
			["<C-[><C-[>"] = "actions.close",
			["<leader>ee"] = "actions.close",
			["q"] = "actions.close",
			["-"] = "actions.parent",
			["_"] = "actions.open_cwd",
			["`"] = "actions.cd",
			["~"] = "actions.tcd",
			["gs"] = "actions.change_sort",
			["gx"] = "actions.open_external",
			["g."] = "actions.toggle_hidden",
			["g\\"] = "actions.toggle_trash",
		},
		skip_confirm_for_simple_edits = true,
		experimental_watch_for_changes = true,
		float = {
			-- Padding around the floating window
			padding = 15,
			max_width = 0,
			max_height = 0,
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
