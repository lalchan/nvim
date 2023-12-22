local lsp = require('lsp-zero')

lsp.on_attach(function(_, bufnr)
	lsp.default_keymaps({buffer = bufnr})
	vim.keymap.set('n', 'gr', ':Telescope lsp_references<iCR>', {buffer = bufnr})
	vim.keymap.set('n', 'gd', ':Telescope lsp_definitions<CR>', {buffer = bufnr})
end)

require("mason").setup()


require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"eslint",
		"gopls",
		"lua_ls"
	},
	handlers = {
		lsp.default_setup,
	}
})


