return {
  "nvim-telescope/telescope.nvim",
  keys = function()
    local builtin = require("telescope.builtin")
    return {
      { "<leader>ff", builtin.find_files, desc = "Find Files" },
      { "<leader>fg", builtin.live_grep, desc = "Grep Project" },
      { "<leader>fb", builtin.buffers, desc = "Find Buffers" },
      { "<leader>fh", builtin.help_tags, desc = "Find Help Files" },
      { "<leader>fc", builtin.git_commits, desc = "Colorscheme with preview" },
      { "<leader>fK", builtin.keymaps, desc = "Find Keymaps" },
      { "<leader>fd", builtin.diagnostics, desc = "Find Diagnoostics" },
      { "<leader>fr", builtin.resume, desc = "Result Last Search" },
    }
  end,
}
