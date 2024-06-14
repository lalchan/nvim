return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

		vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffcaca" })
		vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ffcaca" })
		vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#ffcaca" })
	end,
}
