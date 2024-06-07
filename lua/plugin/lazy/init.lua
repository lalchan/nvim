local themes = require("plugin/lazy/themes") -- Themes
local conform = require("plugin.lazy.conform") -- Formatter
local gitsign = require("plugin/lazy/gitsign") -- Adds git related signs to the gutter
local whichKey = require("plugin/lazy/whichKey") -- Useful plugin to show you pending keybinds
local telescope = require("plugin/lazy/telescope") -- Fuzzy Finder
local treesitter = require("plugin/lazy/treesitter") -- Highlight, edit, and navigate code
local session = require("plugin/lazy/session") -- Session
local dashboard = require("plugin/lazy/dashboard") -- Dashboard
local oil = require("plugin/lazy/oil") -- File explorer
local harpoon = require("plugin/lazy/harpoon") -- Harpoon
local neogit = require("plugin/lazy/neogit")
local flash = require("plugin/lazy/flash")
local codeium = require("plugin/lazy/codeium") -- Codeium
local undotree = require("plugin/lazy/undotree") -- Undotree
local transparent = require("plugin/lazy/transparent")
local mini = require("plugin/lazy/mini") -- Collection of various small independent plugins/modules
local lsp = require("plugin/lazy/lsp") -- LSP
local cmp = require("plugin/lazy/cmp") -- Auto Complete

return {
	themes,
	conform,
	gitsign,
	whichKey,
	telescope,
	treesitter,
	session,
	dashboard,
	oil,
	harpoon,
	neogit,
	flash,
	codeium,
	undotree,
	transparent,
	mini,
	lsp,
	cmp,
}
