return {
  'rmagatti/auto-session',
  lazy = false,
  opts = {
    log_level = 'error',
    allowed_dirs = {
      '~/Documents/',
    },
    suppressed_dirs = {
      '~/.config/',
      '~/',
    },
  },
  keys = {
    { '<leader>Ss', '<cmd>AutoSession save<CR>', desc = '[S]ave session' },
    { '<leader>SS', '<cmd>AutoSession search<CR>', desc = 'Session [s]earch' },
    { '<leader>St', '<cmd>AutoSession toggle<CR>', desc = '[T]oggle Auto-Session' },
  },
}
