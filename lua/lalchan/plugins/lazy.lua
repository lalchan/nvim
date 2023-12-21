local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"folke/which-key.nvim",
	init = function() 
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts= {}, 
	{
        	"kdheepak/lazygit.nvim",
        	dependencies = {
            		"nvim-lua/plenary.nvim",
    		},
	}
}, opts)
