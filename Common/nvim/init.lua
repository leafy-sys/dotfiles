vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- This is the "bootstrap" code for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- This line sets up lazy.nvim
-- We will tell it where to find our plugin files
require("lazy").setup("plugins")


-- Set line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- Set indentation (4 spaces)
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Don't wrap lines
vim.opt.wrap = false

-- Make search case-insensitive unless you type a capital letter
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Highlight search results as you type
vim.opt.incsearch = true

-- Disable creation of swap files
vim.opt.swapfile = false

-- =========================================================================================================================================================================
-- KEYMAPS
-- =========================================================================================================================================================================

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader><space>", ":nohlsearch<CR>", { desc = "Clear search highlight", silent = true })
vim.keymap.set("n", "<leader>?", ":lua vim.diagnostic.setloclist()")
