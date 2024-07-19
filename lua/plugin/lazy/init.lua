local themes = require("plugin.lazy.themes") -- Themes
local gitSign = require("plugin.lazy.git-sign") -- Adds git related signs to the gutter
local whichKey = require("plugin.lazy.which-key") -- Useful plugin to show you pending keybinds
local telescope = require("plugin.lazy.telescope") -- Fuzzy Finder
local treeSitter = require("plugin.lazy.tree-sitter") -- Highlight, edit, and navigate code
local session = require("plugin.lazy.session") -- Session
local dashboard = require("plugin.lazy.dashboard") -- Dashboard
local oil = require("plugin.lazy.oil") -- File explorer
local harpoon = require("plugin.lazy.harpoon") -- Harpoon
local lazygit = require("plugin.lazy.lazygit")
local flash = require("plugin.lazy.flash")
local codeium = require("plugin.lazy.codeium") -- Codeium
local undoTree = require("plugin.lazy.undo-tree") -- Undotree
local mini = require("plugin.lazy.mini") -- Collection of various small independent plugins.modules
local treeSitterContext = require("plugin.lazy.tree-sitter-context")
local cmp = require("plugin.lazy.cmp") -- Auto Complete
local lsp = require("plugin.lazy.lsp") -- LSP
local lualine = require("plugin.lazy.lualine")
local conform = require("plugin.lazy.conform") -- Formatter

return {
	themes,
	gitSign,
	whichKey,
	telescope,
	treeSitter,
	session,
	dashboard,
	oil,
	harpoon,
	lazygit,
	flash,
	codeium,
	undoTree,
	mini,
	treeSitterContext,
	lsp,
	cmp,
	lualine,
	conform,
}
