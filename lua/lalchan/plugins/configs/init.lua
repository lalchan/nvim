local whichKey = require("lalchan/plugins/configs/which_key")
local gitSigns = require("lalchan/plugins/configs/git_signs")
local luaLine = require("lalchan/plugins/configs/lua_line")
local ibl = require("lalchan/plugins/configs/ibl")
local comment = require("lalchan/plugins/configs/comment")
local telescope = require("lalchan/plugins/configs/telescope")
local treeSitter = require("lalchan/plugins/configs/tree_sitter")
local oneDark = require("lalchan/plugins/configs/one_dark")
local harpoon = require("lalchan/plugins/configs/harpoon")
local lsp = require("lalchan/plugins/configs/lsp")
local cmp = require("lalchan/plugins/configs/cmp")
local lazyGit = require("lalchan/plugins/configs/lazygit")

return {
	whichKey,
	gitSigns,
	luaLine,
	ibl,
	comment,
	harpoon,
	telescope,
	treeSitter,
	oneDark,
	lsp,
	cmp,
	lazyGit
}
