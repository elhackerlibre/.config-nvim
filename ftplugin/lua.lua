-- Alias
local opt = vim.opt

-- Set up appearance
opt.encoding = 'utf8'
opt.number = true
opt.relativenumber = true
opt.termguicolors = true

vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true

-- Resaltado de sintaxis
vim.cmd('syntax enable')            -- Activar resaltado de sintaxis
vim.cmd('filetype plugin indent on') -- Activar detección de tipo de archivo

-- Ejecutar script Lua con F5
vim.api.nvim_set_keymap('n', '<F5>', ':w<CR>:!lua %<CR>', { noremap = true, silent = true })
