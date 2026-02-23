return {
  'rmagatti/auto-session',
  lazy = false,
  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    auto_save = true,
    auto_restore = true,
    auto_create = false,
    -- suppressed_dirs = { '~/' },
    -- allowed_dirs = { '~/Documents/projects/', '~/Documents/repos/' },
    log_level = 'error',
    session_lens = {
      picker = 'snacks',
    },
  },
  keys = {
    { '<leader>Sc', '<cmd>AutoSession save<CR>', desc = '[S]ession [c]reation' },
    { '<leader>Ss', '<cmd>AutoSession search<CR>', desc = '[S]ession [s]each' },
    { '<leader>Sd', '<cmd>AutoSession deletePicker<CR>', desc = '[S]ession [d]eletion' },
  },
}
