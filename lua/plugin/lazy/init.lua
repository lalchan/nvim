local sleuth = require("plugin/lazy/sleuth")
local comment = require("plugin/lazy/comment")
local gitsign = require("plugin/lazy/gitsign")
local whichKey = require("plugin/lazy/whichKey")
local mini = require("plugin/lazy/mini")
local themes = require("plugin/lazy/themes")
local conform = require("plugin/lazy/conform")
local telescope = require("plugin/lazy/telescope")
local treesitter = require("plugin/lazy/treesitter")
local lsp = require("plugin/lazy/lsp")
local cmp = require("plugin/lazy/cmp")
local codeium = require("plugin/lazy/codeium")
local oil = require("plugin/lazy/oil")
local dashboard = require("plugin/lazy/dashboard")
local session = require("plugin/lazy/session")
local harpoon = require("plugin/lazy/harpoon")
local undotree = require("plugin/lazy/undotree")
local noice = require("plugin/lazy/noice")
local lazygit = require("plugin/lazy/lazygit")
local lualine = require("plugin/lazy/lualine")

return {
	themes,
	sleuth,
	comment,
	gitsign,
	whichKey,
	mini,
	conform,
	telescope,
	treesitter,
	lsp,
	cmp,
	codeium,
	oil,
	dashboard,
	session,
	harpoon,
	undotree,
	noice,
	lazygit,
	lualine,
}
