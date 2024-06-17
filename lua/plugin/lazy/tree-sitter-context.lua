return {
	"nvim-treesitter/nvim-treesitter-context",
	opts = function()
		vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "none" })
		vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { fg = "#ffcaca" })
		return {
			max_lines = 2, -- How many lines the window should span. Values <= 0 mean no limit.
			multiline_threshold = 1, -- Maximum number of lines to collapse for a single context line
		}
	end,
}
