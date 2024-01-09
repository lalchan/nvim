local colorSchemes = {
	gruvbox = "gruvbox",
	catppuccin = "catppuccin",
	onedark = "onedark",
	tokyonight = "tokyonight",
	noClown = "no-clown-fiesta",
	rosepine = "rose-pine",
	rosepinemoon = "rose-pine-moon"
}

local default = colorSchemes.rosepinemoon
function SetColorScheme(colorScheme)
	local color = colorScheme or default
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColorScheme(default)
