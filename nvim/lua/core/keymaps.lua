vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.showcmd = true


vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.autoindent = true
vim.opt.relativenumber = true
vim.opt.swapfile = false

-- use spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true



vim.keymap.set("n", "<C-x>", "<Cmd>Telescope find_files<CR>");
vim.keymap.set("n", "<C-g>", "<Cmd>Telescope live_grep<CR>");
vim.keymap.set("n", "<C-h>", "<Cmd>noh<CR>");

vim.keymap.set("n", "<c-h>", "<Cmd>wincmd h<CR>");
vim.keymap.set("n", "<c-l>", "<Cmd>wincmd l<CR>");
vim.keymap.set("n", "<c-j>", "<Cmd>wincmd j<CR>");
vim.keymap.set("n", "<c-k>", "<Cmd>wincmd k<CR>");
