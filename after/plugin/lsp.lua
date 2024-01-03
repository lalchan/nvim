local on_attach = function(_, bufnr)
	local nmap = function(keys, func, desc)
		if desc then
			desc = 'LSP: ' .. desc
		end
		vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
	end
	nmap('<leader>lr', vim.lsp.buf.rename, 'Rename Symbol')
	nmap('<leader>la', vim.lsp.buf.code_action, 'Code Actions')
	nmap('<leader>lf', vim.lsp.buf.format, 'Format File')


	nmap('gd', require('telescope.builtin').lsp_definitions, 'Definition')
	nmap('gD', require('telescope.builtin').lsp_type_definitions, 'Type Definition')
	nmap('gr', require('telescope.builtin').lsp_references, 'References')
	nmap('gi', require('telescope.builtin').lsp_implementations, 'Implementations')
	nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
end

require('mason').setup()
require('mason-lspconfig').setup()
local servers = {
	clangd = {},
	gopls = {},
	pyright = {},
	rust_analyzer = {},
	tsserver = {},
	html = { filetypes = { 'html', 'twig', 'hbs' } },
	bashls = {},
	lua_ls = {
		Lua = {
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
			-- NOTE: toggle below to ignore Lua_LS's noisy `missing-fields` warnings
			-- diagnostics = { disable = { 'missing-fields' } },
		},
	},
}

-- Setup neovim lua configuration
require('neodev').setup()

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
	ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
	function(server_name)
		require('lspconfig')[server_name].setup {
			capabilities = capabilities,
			on_attach = on_attach,
			settings = servers[server_name],
			filetypes = (servers[server_name] or {}).filetypes,
		}
	end,
}
