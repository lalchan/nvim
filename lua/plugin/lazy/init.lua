local themes = require("plugin/lazy/themes") -- Themes
local conform = require("plugin.lazy.conform") -- Formatter
local comment = require("plugin/lazy/comment") -- "gc" to comment visual regions/lines
local gitsign = require("plugin/lazy/gitsign") -- Adds git related signs to the gutter
local whichKey = require("plugin/lazy/whichKey") -- Useful plugin to show you pending keybinds
local neoTree = require("plugin/lazy/neotree") -- File explorer
local telescope = require("plugin/lazy/telescope") -- Fuzzy Finder
local treesitter = require("plugin/lazy/treesitter") -- Highlight, edit, and navigate code
local session = require("plugin/lazy/session") -- Session
local dashboard = require("plugin/lazy/dashboard") -- Dashboard
local harpoon = require("plugin/lazy/harpoon") -- Harpoon
local lualine = require("plugin/lazy/lualine") -- Lualine
local codeium = require("plugin/lazy/codeium") -- Codeium
local undotree = require("plugin/lazy/undotree") -- Undotree
local mini = require("plugin/lazy/mini") -- Collection of various small independent plugins/modules
local lazygit = require("plugin/lazy/lazygit") -- LazyGit
local noice = require("plugin/lazy/noice") -- Pretty UI
local lsp = require("plugin/lazy/lsp") -- LSP
local cmp = require("plugin/lazy/cmp") -- Auto Complete

return {
	themes,
	conform,
	comment,
	gitsign,
	whichKey,
	neoTree,
	telescope,
	treesitter,
	session,
	dashboard,
	harpoon,
	lualine,
	codeium,
	undotree,
	mini,
	lazygit,
	noice,
	lsp,
	cmp,
}
