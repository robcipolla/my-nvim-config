vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.clipboard = 'unnamedplus'
vim.opt.backspace = '2'
vim.opt.laststatus = 2
vim.opt.showcmd = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true
vim.wo.relativenumber = true
