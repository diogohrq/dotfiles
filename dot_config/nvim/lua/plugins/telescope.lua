return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-ui-select.nvim",
  },
  keys = function()
    local builtin = require("telescope.builtin")
    
    return {
      { "<leader>ff", builtin.find_files, desc = "Lists files in the cwd" },
      { "<leader>fr", builtin.oldfiles, desc = "Lists previously open files" },
      { "<leader>fg", builtin.live_grep, desc = "Search for a string in the cwd" },
      { "<leader>fs", builtin.grep_string, desc = "Search for the string under the cursor in the cwd" }, 
    }
  end,
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "^./.git/",
          "^node_modules/",
        },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("ui-select")
  end,
}
