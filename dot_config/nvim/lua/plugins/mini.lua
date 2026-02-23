return {
  'nvim-mini/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- require('mini.sessions').setup {
    --   autoread = true,
    -- }
    --
    -- local get_cwd_name = function() return vim.fn.fnamemodify(vim.fn.getcwd(), ':t') end
    --
    -- vim.keymap.set('n', '<leader>Sc', function() MiniSessions.write(get_cwd_name()) end, { desc = '[S]ession [C]reation' })
    -- vim.keymap.set('n', '<leader>Ss', function() MiniSessions.select 'read' end, { desc = '[S]essions [S]each ' })
    -- vim.keymap.set('n', '<leader>Sd', function() MiniSessions.select 'delete' end, { desc = '[S]essions [D]eletion' })
  end,
}
