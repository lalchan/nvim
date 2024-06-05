return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
		"ibhagwan/fzf-lua", -- optional
	},
	config = true,
	keys = function()
		return {
			{
				"<leader>gg",
				function()
					require("neogit").open({ kind = "auto" })
				end,
				desc = "Neogit",
			},
		}
	end,
}
