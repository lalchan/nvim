local cmp = require('cmp')

cmp.setup({
	mapping= {
		['<tab>'] = cmp.mapping.confirm({select= false}),
		['<CR>'] = cmp.mapping.confirm({select= false}),
		['<Esc>'] = cmp.mapping.abort(),
		['<C-k>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
		['<c-j>'] = cmp.mapping.select_next_item({behavior = 'select'}),
	}
})
