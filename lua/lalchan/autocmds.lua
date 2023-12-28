local colorSchemes = {
	gruvbox = "gruvbox",
	catppuccin = "catppuccin",
	onedark = "onedark",
	tokyonight = "tokyonight"
}
local default= colorSchemes.onedark
vim.cmd.colorscheme(default)

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})
