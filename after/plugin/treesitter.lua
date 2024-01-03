require("nvim-treesitter.configs").setup {
	ensure_installed = {
		'c',
		'cpp',
		'go',
		'lua',
		'python',
		'rust',
		'tsx',
		'javascript',
		'typescript',
		'vimdoc',
		'vim',
		'bash'
	},
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
}
