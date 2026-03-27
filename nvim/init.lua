-- Basic Neovim configuration

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.writebackup = false

-- Keybindings
local keymap = vim.keymap.set

-- Save file
keymap("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- Better navigation
keymap("n", "J", "mzJ`z", { desc = "Keep cursor centered when joining lines" })
keymap("n", "<C-d>", "<C-d>zz", { desc = "Half page down centered" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Half page up centered" })

-- Window management
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Split windows
keymap("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Vertical split" })
keymap("n", "<leader>sh", "<cmd>split<CR>", { desc = "Horizontal split" })

-- Clear search
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Quit
keymap("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- Autocommands
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight on yank
augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
})

-- Remove trailing whitespace on save
augroup("TrimWhitespace", { clear = true })
autocmd("BufWritePre", {
  group = "TrimWhitespace",
  pattern = "*",
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
})
