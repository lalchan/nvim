require("which-key").register { ['<leader>u'] = { name = "[U]ndoTree", _ = 'which_key_ignore' } }
vim.keymap.set('n', '<leader>uu', "<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>", { desc= "Toggle UndoTree"})
vim.keymap.set('n', '<leader>uf', "<cmd>UndotreeFocus<cr>", { desc= "Focus UndoTree"})
