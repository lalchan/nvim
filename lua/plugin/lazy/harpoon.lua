return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon"):setup({})
	end,
	keys = function()
		local harpoon = require("harpoon")
		return {
			{
				"<leader>hf",
				function()
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "[H]arpoon [F]iles",
			},
			{
				"<leader>ha",
				function()
					harpoon:list():add()
				end,
				desc = "[H]arpoon [A]ppend",
			},
			{
				"<C-h>",
				function()
					harpoon:list():select(1)
				end,
				desc = "[H]arpoon [1] Select",
			},
			{
				"<C-j>",
				function()
					harpoon:list():select(2)
				end,
				desc = "[H]arpoon [2] Select",
			},
			{
				"<C-k>",
				function()
					harpoon:list():select(3)
				end,
				desc = "[H]arpoon [3] Select",
			},
			{
				"<C-l>",
				function()
					harpoon:list():select(4)
				end,
				desc = "[H]arpoon [4] Select",
			},
		}
	end,
}
