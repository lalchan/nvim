
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>c', ":noh<CR>")

vim.keymap.set("n", "<leader>G", ":LazyGit<CR>")
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle)
vim.keymap.set('n', '<leader>cr', function ()return  ':IncRename ' .. vim.fn.expand("<cword>")end , {expr = true})

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<BS>', '<Nop>', { silent = true })

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
