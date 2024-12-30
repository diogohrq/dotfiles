vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.wo.relativenumber = true
vim.o.hlsearch = true
vim.o.undofile = true
vim.o.completeopt = "menuone,noselect"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.o.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.fillchars:append({ eob = " " })
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>u", "<cmd>u<CR>", { desc = "Undo" })
vim.keymap.set("n", "<leader>/", "<cmd>noh<CR>", { desc = "Clear find results" })
vim.keymap.set("n", "<leader>cc", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>ca", "<cmd>%bd|e#|bd#<CR>", { desc = "Close all buffers except the current one" })
vim.keymap.set("n", "<leader>h", "<cmd>bprevious<CR>", { desc = "Move to the previous buffer" })
vim.keymap.set("n", "<leader>l", "<cmd>bnext<CR>", { desc = "Move to the next buffer" })
