vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set spell")
vim.opt.number = true
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', 'J', '5j', {noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '5k', {noremap = true, silent = true })
vim.opt.guifont = 'Hack Nerd Font'
