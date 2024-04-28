local map = vim.api.nvim_set_keymap

-- Configuración básica
vim.opt.tabstop = 4                 -- Ancho de tabulación = 4 espacios
vim.opt.shiftwidth = 4              -- Ancho de indentación = 4 espacios
vim.opt.expandtab = true            -- Usar espacios en lugar de tabulaciones
vim.opt.autoindent = true           -- Autoindentación
vim.opt.smartindent = true          -- Indentación inteligente

-- Resaltado de sintaxis
vim.cmd('syntax enable')            -- Activar resaltado de sintaxis
vim.cmd('filetype plugin indent on') -- Activar detección de tipo de archivo

-- Compilar y ejecutar con F5
map('n', '<F5>', ':w<CR>:!g++ % -o %< && ./%<CR>', { noremap = true }) 