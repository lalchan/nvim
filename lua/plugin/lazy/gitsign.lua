-- Adds git related signs to the gutter, as well as utilities for managing changes
--
return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signcolumn = false,
		numhl = true,
		-- linehl = true,
		current_line_blame = true,
	},
}
