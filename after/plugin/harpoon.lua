local harpoon = require("harpoon")

harpoon:setup({})

vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end, {
	desc = "Mark File"
})
vim.keymap.set("n", "<leader>hf", function() harpoon.ui:toggle_quick_menu(harpoon:list(), { border = "none" }) end, {
	desc = "Open Menu"
})
vim.keymap.set("n", "<leader>hh", function() harpoon:list():prev() end, {
	desc = "Previous Buffer"
})
vim.keymap.set("n", "<leader>hl", function() harpoon:list():next() end, {
	desc = "Next Buffer"
})

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
