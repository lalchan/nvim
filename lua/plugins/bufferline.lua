return {
  "akinsho/bufferline.nvim",
  keys = function()
    return {
      { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
    }
  end,
}
