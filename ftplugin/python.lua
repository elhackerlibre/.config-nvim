-- Alias
local api = vim.api
local opt = vim.opt

-- Set up appearance
opt.encoding = 'utf8'
opt.number = true
opt.relativenumber = true
opt.termguicolors = true

-- Configuración básica
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Resaltado de sintaxis
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

-- Definición de la función para abrir un terminal horizontal en la parte inferior con un tamaño personalizado
local function open_terminal()
  local width = vim.o.columns * 0.8 -- 80% del ancho de la ventana
  local height = vim.o.lines * 0.3 -- 30% de la altura de la ventana
  vim.cmd(string.format(":belowright split | resize %d", height))
  vim.cmd("term python3 %")
  vim.cmd("startinsert") -- Activar automáticamente el modo de inserción al abrir el terminal
  vim.cmd("autocmd BufWinEnter term://* setlocal nonumber") -- Ocultar los números de línea en el buffer del terminal
end

-- Asignación de la función a una variable global para hacerla accesible
_G.open_terminal = open_terminal

-- Mapeo de teclas para abrir la terminal personalizada
api.nvim_set_keymap('n', '<F5>', ':lua open_terminal()<CR>', { noremap = true })
