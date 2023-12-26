require("which-key").register { ['<leader>g'] = { name = "[G]it", _ = 'which_key_ignore' } }

vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", {desc = "Open Lazy Git"})
