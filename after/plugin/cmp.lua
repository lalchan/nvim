local cmp = require('cmp')

local luasnip = require('luasnip')

require('luasnip.loaders.from_vscode').lazy_load()

luasnip.config.setup {}

cmp.setup {
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	completion = {
		completeopt = 'menu,menuone,noinsert',
	},
	mapping = {
		['<tab>'] = cmp.mapping.confirm({ select = true }),
		['<CR>'] = cmp.mapping.confirm({ select = false }),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-k>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
		['<c-j>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'path' },
		{ name = 'codeium' },
	},
}
