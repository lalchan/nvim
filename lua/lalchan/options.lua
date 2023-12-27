local g = vim.g;

g.mapleader = " "
g.maplocalleader = "\\"

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.scrolloff = 15

opt.updatetime = 250
opt.timeoutlen = 300

opt.termguicolors = true

opt.wrap = false

opt.tabstop = 4
opt.shiftwidth = 4

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

opt.undofile = true
opt.completeopt = "menuone,noselect"
