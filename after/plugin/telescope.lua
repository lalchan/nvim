local builtin = require('telescope.builtin')

require("which-key").register { ['<leader>f'] = { name = "[F]ind Among", _ = 'which_key_ignore' } }
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Files"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Grep"})
vim.keymap.set('n', '<leader>fG', builtin.git_files, { desc = "Git Files"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Help Files"})
vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = "Resume Search"})
vim.keymap.set('n', '<leader> ', builtin.buffers, { desc = "Buffers"})

local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
      }
    }
  }
}
