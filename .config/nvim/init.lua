require('lazy').setup({
  {'projekt0n/github-nvim-theme'},
  {'nvim-tree/nvim-tree.lua'},
  {'lewis6991/gitsigns.nvim'},
})

vim.cmd.colorscheme('github_dark')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.mouse = 'a'

require('nvim-tree').setup()

require('gitsigns').setup()
