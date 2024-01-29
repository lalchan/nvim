return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  opts = {},

  keys = function()
    local harpoon = require("harpoon")
    return {
      {
        "<leader>hf",
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
      },
      {
        "<leader>ha",
        function()
          harpoon:list():append()
        end,
      },
      {
        "<C-h>",
        function()
          harpoon:list():select(1)
        end,
      },
      {
        "<C-j>",
        function()
          harpoon:list():select(2)
        end,
      },
      {
        "<C-k>",
        function()
          harpoon:list():select(3)
        end,
      },
      {
        "<C-l>",
        function()
          harpoon:list():select(4)
        end,
      },
    }
  end,
}
