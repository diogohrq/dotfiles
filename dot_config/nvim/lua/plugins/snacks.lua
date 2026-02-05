local dashboard_header = [[
███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ 
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   
         ░    ░  ░    ░ ░        ░   ░         ░   
                                ░
]]

local change_dir = function(path)
  vim.cmd.cd(path)
  Snacks.dashboard.pick('files', { cmd = path })
end

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
        hl = 'SnacksIndent3',
      },
    },
    dashboard = {
      enabled = false,
      preset = {
        keys = {
          { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
          { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
          { icon = '󱩾 ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = '󱋢 ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = ' ', key = 's', desc = 'Restore session', action = ":lua require('persistence').select()" },
          { icon = ' ', key = 'O', desc = 'Obsidian', action = function() change_dir(vim.fn.expand '~/Documents/notes/') end },
          { icon = ' ', key = 'C', desc = 'Config', action = function() change_dir(vim.fn.stdpath 'config') end },
          { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
        },
        header = dashboard_header,
      },
      sections = {
        { section = 'header' },
        { section = 'keys', gap = 1, padding = 2 },
        -- { type = 'text', padding = 1, text = { 'Projects', hl = 'Title', align = 'center' } },
        -- { section = 'projects' },
      },
    },
  },
  keys = {
    { '\\', '<cmd>:lua Snacks.explorer.open()<CR>', 'Toggle file explorer' },
    { mode = { 'n', 't' }, '<c-\\>', '<cmd>:lua Snacks.terminal()<CR>', 'Toggle terminal' },
  },
}
