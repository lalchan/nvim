-- Useful plugin to show you pending keybinds.
return {
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function() -- This is the function that runs, AFTER loading
		require("which-key").setup()

		-- Document existing key chains
		require("which-key").register({
			["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
			["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
			["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
			["<leader>f"] = { name = "[F]ind", _ = "which_key_ignore" },
			["<leader>s"] = { name = "[S]urround", _ = "which_key_ignore" },
			["<leader>g"] = { name = "[G]it", _ = "which_key_ignore" },
			["<leader>gh"] = { name = "[G]it [H]unk", _ = "which_key_ignore" },
			["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
			["<leader>e"] = { name = "[E]xplorer", _ = "which_key_ignore" },
			["<leader>h"] = { name = "[H]arpoon", _ = "which_key_ignore" },
		})
	end,
}
