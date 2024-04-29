local map = vim.api.nvim_set_keymap

-- Configuración básica
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4                 -- Ancho de tabulación = 4 espacios
vim.bo.shiftwidth = 4              -- Ancho de indentación = 4 espacios
vim.bo.expandtab = true            -- Usar espacios en lugar de tabulaciones
vim.bo.autoindent = true           -- Autoindentación
vim.bo.smartindent = true          -- Indentación inteligente

-- Resaltado de sintaxis
vim.cmd('syntax enable')            -- Activar resaltado de sintaxis
vim.cmd('filetype plugin indent on') -- Activar detección de tipo de archivo

-- Ejecutar script Python con F5
map('n', '<F5>', ':w<CR>:!python3 %<CR>', { noremap = true })
