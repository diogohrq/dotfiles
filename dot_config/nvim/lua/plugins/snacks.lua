return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    explorer = {
      enabled = true,
      replace_netrw = true,
      trash = true,
    },
    terminal = {
      enabled = true,
    },
    indent = {
      animate = {
        enabled = true,
      },
      indent = {
        enabled = true,
        priority = 1,
        char = '▏',
      },
      scope = {
        enabled = true,
        char = '▏',
        -- hl = 'SnacksIndent3',
      },
    },
    input = {
      enabled = true,
    },
    picker = {
      enabled = true,
    },
    lazygit = {
      enabled = true,
    },
  },
  keys = {
    { '\\', function() Snacks.explorer.open() end, desc = 'Toggle file explorer' },
    { mode = { 'n', 't' }, '<c-\\>', function() Snacks.terminal() end, desc = 'Toggle terminal' },
    { '<leader>sl', function() Snacks.lazygit() end, desc = 'Open Lazygit' },
    { '<leader>sf', function() Snacks.picker.files() end, desc = '[S]earch [F]iles' },
    { '<leader>ss', function() Snacks.picker.smart() end, desc = '[S]mart [S]earch files' },
    { '<leader>sk', function() Snacks.picker.keymaps() end, desc = '[S]earch [K]eymaps' },
    { '<leader>sh', function() Snacks.picker.help() end, desc = '[S]earch [H]elp' },
    { '<leader>sg', function() Snacks.picker.grep() end, desc = '[S]earch [G]rep' },
    { mode = { 'n', 'x', 'v' }, '<leader>sw', function() Snacks.picker.grep_word() end, desc = '[S]earch current [W]ord' },
    { '<leader>sr', function() Snacks.picker.recent() end, desc = '[S]earch [R]ecent files' },
    { '<leader>s.', function() Snacks.picker.resume() end, desc = '[S]earch [R]esume' },
    { '<leader>sc', function() Snacks.picker.commands() end, desc = '[S]earch [C]ommans' },
    { '<leader>sp', function() Snacks.picker.projects() end, desc = '[S]earch [P]rojects' },
    { '<leader><leader>', function() Snacks.picker.buffers() end, desc = '[S]earch [B]uffers' },
    {
      'grr',
      function() Snacks.picker.lsp_references() end,
      nowait = true,
      desc = '[S]earch [R]eferences',
    },
    { 'gri', function() Snacks.picker.lsp_implementations() end, desc = '[S]earch [I]mplementations' },
    { 'grd', function() Snacks.picker.lsp_definitions() end, desc = '[S]earch [D]efinitions' },
    { 'gO', function() Snacks.picker.lsp_symbols() end, desc = '[S]earch Symbols' },
    { 'gW', function() Snacks.picker.lsp_workspace_symbols() end, desc = '[S]earch [W]orkspace Symbols' },
    { 'grt', function() Snacks.picker.lsp_type_definitions() end, desc = '[S]earch [T]ype definitions' },
  },
}
