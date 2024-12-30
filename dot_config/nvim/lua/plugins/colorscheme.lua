return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    commentStyle = { italic = true },
    keywordStyle = { bold = true },
    typeStyle = { italic = true, bold = true },
  },
  config = function()
    vim.cmd("colorscheme kanagawa")
  end
}
