return {
	"stevearc/conform.nvim",
	event = "LspAttach",
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_format = "fallback", stop_after_first = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		quiet = true,
		formatters_by_ft = {
			typescript = { "biome" },
			javascript = { "biome" },
			typescriptreact = { "biome" },
			javascriptreact = { "biome" },
			json = { "biome" },
			html = { "biome" },
			css = { "biome" },
			scss = { "biome" },
			markdown = { "biome" },
			yaml = { "biome" },
			lua = { "stylua" },
			sh = { "beautysh" },
			zsh = { "beautysh" },
			astro = { "biome" },
		},
	},
}
