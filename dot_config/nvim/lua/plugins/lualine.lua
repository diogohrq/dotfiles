return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      icons_enabled = true,
      section_separators = { left = '', right = '' },
      -- section_separators = { left = '', right = '' },
      -- component_separators = { left = '', right = '' },
      component_separators = { left = '|', right = '' },
      -- section_separators = { left = '', right = '' },
      global_status = true,
      disabled_filetypes = {
        'help',
        'startuptime',
        'qf',
        'lspinfo',
        'checkhealth',
        'man',
      },
      ignore_focus = {
        'NvimTree',
      },
    },
    extensions = {
      'nvim-tree',
      'neo-tree',
      'nvim-dap-ui',
      'toggleterm',
      'lazy',
      'mason',
      'man',
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {
        {
          'filename',
          newfile_status = false,
          symbols = {
            modified = '●',
          },
        },
      },
      lualine_c = { 'branch', 'diff', 'diagnostics' },
      lualine_x = { 'searchcount' },
      lualine_y = { 'selectioncount' },
      lualine_z = { 'progress' },
    },
  },
}
