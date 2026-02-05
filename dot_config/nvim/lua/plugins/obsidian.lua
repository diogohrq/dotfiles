return {
  'obsidian-nvim/obsidian.nvim',
  version = '*',
  ft = 'markdown',
  opts = {
    legacy_commands = false,
    ui = {
      enabled = false,
    },
    workspaces = {
      {
        name = 'notes',
        path = '~/Documents/notes/',
      },
    },
  },
  keys = {
    { '<leader>o', '<cmd>Obsidian<CR>', desc = '[O]bsidian commands' },
  },
}
