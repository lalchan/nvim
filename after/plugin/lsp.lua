local lsp = require('lsp-zero')

lsp.on_attach(function(_, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

require("mason").setup({})


require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"eslint",
		"gopls"
	},
	handlers = {
		lsp.default_setup,
	}
})


