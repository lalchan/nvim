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
			astro = { "prettier" },
		},
	},
}
