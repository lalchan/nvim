return {
  "stevearc/conform.nvim",
  keys = function()
    return {
      {
        "<leader>lf",
        function()
          require("conform").format({ formatters = { "injected" } })
        end,
        mode = { "n", "v" },
        desc = "Format Injected Langs",
      },
    }
  end,
}
