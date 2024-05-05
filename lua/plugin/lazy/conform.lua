return {
	"stevearc/conform.nvim",
	event = "LspAttach",
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		quiet = true,
		formatters_by_ft = {
			typescript = { { "prettierd", "prettier" } },
			javascript = { { "prettierd", "prettier" } },
			typescriptreact = { { "prettierd", "prettier" } },
			javascriptreact = { { "prettierd", "prettier" } },
			json = { { "prettierd", "prettier" } },
			html = { { "prettierd", "prettier" } },
			css = { { "prettierd", "prettier" } },
			scss = { { "prettierd", "prettier" } },
			markdown = { { "prettierd", "prettier" } },
			yaml = { { "prettierd", "prettier" } },
            python = { "isort", "black" },
			lua = { "stylua" },
			sh = { "beautysh" },
			zsh = { "beautysh" },
		},
		format_on_save = function(bufnr)
			-- Disable autoformat for files in a certain path
			local bufname = vim.api.nvim_buf_get_name(bufnr)
			if bufname:match("/node_modules/") then
				return
			end
			local disable_filetypes = { c = true, cpp = true, env = true }
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
				async = true,
			}
		end,
		format_after_save = { lsp_fallback = true },
	},
}
