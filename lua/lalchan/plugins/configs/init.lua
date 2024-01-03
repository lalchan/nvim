local mini = require("lalchan/plugins/configs/mini")
local whichKey = require("lalchan/plugins/configs/whichKey")
local gitSigns = require("lalchan/plugins/configs/gitSigns")
local lualine = require("lalchan/plugins/configs/lualine")
local treeSitter = require("lalchan/plugins/configs/treesitter")
local telescope = require("lalchan/plugins/configs/telescope")
local harpoon = require("lalchan/plugins/configs/harpoon")
local lsp = require("lalchan/plugins/configs/lsp")
local cmp = require("lalchan/plugins/configs/cmp")
local lazyGit = require("lalchan/plugins/configs/lazygit")
local undoTree = require("lalchan/plugins/configs/undoTree")
local oil = require("lalchan/plugins/configs/oil")
local themes = require("lalchan/plugins/configs/themes")

return {
	mini,
	whichKey,
	gitSigns,
	lualine,
	telescope,
	treeSitter,
	harpoon,
	lsp,
	cmp,
	lazyGit,
	undoTree,
	oil,
	themes
}
