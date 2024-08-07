-- Collection of various small independent plugins/modules
return {
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [']quote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		require("mini.comment").setup({})

		require("mini.hipatterns").setup({
			highlighters = {
				fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
				hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
				todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
				note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
				-- Highlight hex color strings (`#rrggbb`) using that color
				hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
			},
		})

		local animate = require("mini.animate")
		animate.setup({
			cursor = {
				timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
			},
			scroll = {
				timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
			},
			resize = {
				enable = false,
			},
			open = {
				enable = false,
			},
			close = {
				enable = false,
			},
		})

		require("mini.cursorword").setup({
			delay = 150,
		})

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup({
			highlight_duration = 150,
			mappings = {
				add = "<leader>sa", -- Add surrounding in Normal and Visual modes
				delete = "<leader>sd", -- Delete surrounding
				find = "<leader>sf", -- Find surrounding (to the right)
				find_left = "<leader>sF", -- Find surrounding (to the left)
				highlight = "<leader>sh", -- Highlight surrounding
				replace = "<leader>sr", -- Replace surrounding
				update_n_lines = "<leader>sn", -- Update `n_lines`

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},
		})
	end,
}
