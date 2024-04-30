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

-- Mapeo de teclas con <F%> para abrir un terminal horizontal en la parte inferior y ejecutar Python
map("n", "<F5>", ":belowright split term://python3 %<CR>", { noremap = true })



-- Definir una función para crear mapeos de teclas
--local function map(mode, lhs, rhs, opts)
--  local options = { noremap = true, silent = true }
--  if opts then
--    options = vim.tbl_extend("force", options, opts)
--  end
--  vim.keymap.set(mode, lhs, rhs, options)
--end

-- Función para abrir un terminal horizontal en la parte inferior con un tamaño personalizado
-- local function open_terminal()
--  local width = vim.o.columns * 0.8 -- 80% del ancho de la ventana
--  local height = vim.o.lines * 0.4 -- 40% de la altura de la ventana
--  vim.cmd(string.format(":belowright split | resize %d", height))
--  vim.cmd("term python3 %")
-- end

-- Mapeo de teclas para abrir la terminal personalizada
-- map("n", "<F5>", ":lua open_terminal()<CR>", { noremap = true })

