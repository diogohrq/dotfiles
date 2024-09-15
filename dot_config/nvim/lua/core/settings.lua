vim.g.loaded_netrw = 1
vim.g.netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwFileHandlers = 1
vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.o.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.fillchars:append({ eob = " " })

-- Keymaps
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>u", "<cmd>u<CR>", { desc = "Undo" })
vim.keymap.set("n", "<leader>/", "<cmd>noh<CR>", { desc = "Clear find results" })
vim.keymap.set("n", "<leader>cc", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>ca", "<cmd>%bd|e#|bd#<CR>", { desc = "Close all buffers except the current one" })
vim.keymap.set("n", "<leader>h", "<cmd>bprevious<CR>", { desc = "Move to the previous buffer" })
vim.keymap.set("n", "<leader>l", "<cmd>bnext<CR>", { desc = "Move to the next buffer" })
