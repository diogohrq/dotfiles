return {
  'Bekaboo/dropbar.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {},
  keys = {
    { '<leader>;', function() require('dropbar.api').pick() end },
  },
}
