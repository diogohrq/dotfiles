return {
  'Bekaboo/dropbar.nvim',
  opts = {},
  keys = {
    { '<leader>;', function() require('dropbar.api').pick() end },
  },
}
