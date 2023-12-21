local cmp = require('cmp')

cmp.setup({
	preselect=true,
	mapping= {
		['<tab>'] = cmp.mapping.confirm({select= true}),
		['<CR>'] = cmp.mapping.confirm({select= false}),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-k>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
		['<c-j>'] = cmp.mapping.select_next_item({behavior = 'select'}),
	}
})
