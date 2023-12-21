local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader> ", builtin.find_files, {desc = "Fuzzy Find Files"})
vim.keymap.set("n", "<leader>gf", builtin.live_grep, {desc = "Fuzzy Find Grep"})

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
}


