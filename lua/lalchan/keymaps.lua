

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<BS>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<leader>e', '<cmd>Ex<cr>', {desc= "Open File Explorer"})
vim.keymap.set('n', '<leader>c', '<cmd>noh<cr>', {desc= "Clear Highlights"})


require("which-key").register { ['<leader>d'] = { name = "[D]iagnosis", _ = 'which_key_ignore' } }
vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
