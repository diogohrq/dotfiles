return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = {
    need = 1,
  },
  keys = {
    { '<leader>Ss', '<cmd>:lua require("persistence").load()<CR>', desc = 'Load the session for the current directory' },
    { '<leader>SS', '<cmd>:lua require("persistence").select()<CR>', desc = 'Select a session to load' },
    { '<leader>Sl', '<cmd>:lua require("persistence").load({ last = true })<CR>', desc = 'Load the last session' },
    { '<leader>Sd', '<cmd>:lua require("persistence").stop()<CR>', desc = 'Stop persistence' },
  },
}
