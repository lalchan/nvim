return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = function()
    local command = require("neo-tree.command")
    return {
      {
        "<leader>ee",
        function()
          command.execute({ toggle = true })
        end,
        desc = "Explorer NeoTree (root dir)",
      },
      {
        "<leader>eg",
        function()
          command.execute({ source = "git_status", toggle = true })
        end,
        desc = "Git explorer",
      },
      {
        "<leader>eb",
        function()
          command.execute({ source = "buffers", toggle = true })
        end,
        desc = "Buffer explorer",
      },
    }
  end,
}
