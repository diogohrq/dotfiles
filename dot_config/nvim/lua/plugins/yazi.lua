return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>,", "<cmd>Yazi<CR>", desc = "Open yazi at the current file" },
    { "<leader>.", "<cmd>Yazi<CR>", desc = "Open yazi at the current working directory" },
  },
  opts = {
    open_for_directories = true,
  },
}
