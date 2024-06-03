-- Adds git related signs to the gutter, as well as utilities for managing changes
--
return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signcolumn = false,
		numhl = true,
		-- linehl = true,
		current_line_blame = true,
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")
			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "<leader>gn", function()
				gitsigns.nav_hunk("next")
			end, { desc = "Next [H]unk" })

			map("n", "<leader>gp", function()
				gitsigns.nav_hunk("prev")
			end, { desc = "Previous [H]unk" })

			-- Actions
			map({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", { desc = "Stage [H]unk" })
			map({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", { desc = "Reset [H]unk" })
			map("n", "<leader>gs", gitsigns.stage_buffer, { desc = "Stage [B]uffer" })
			map("n", "<leader>ghu", gitsigns.undo_stage_hunk, { desc = "Undo Stage [H]unk" })
			map("n", "<leader>gR", gitsigns.reset_buffer, { desc = "Reset [B]uffer" })
			map("n", "<leader>ghp", gitsigns.preview_hunk, { desc = "Preview [H]unk" })
		end,
	},
}
