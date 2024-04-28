-- Aliases:
--
local map = vim.keymap.set

-- Save current file
map('n', '<C-w>', ':w<CR>', { desc = 'Save file', noremap = true })

map('n', '<C-s>', ':so %<CR>', { desc = 'Reload file', noremap = true })

-- Close file
map('n', '<C-q>', '<cmd>q<cr>', { desc = 'Close file', noremap = true })

-- Select all
map('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all', noremap = true })

-- Split window
map('n', '<C-h>', ':split<Return><C-w>w', { desc = 'Split horizontal', noremap = true })
map('n', '<C-v>', ':vsplit<Return><C-w>w', { desc = 'Split vertical', noremap = true })


-- My personal map key
map('n', '<C-r>', ':%s/', { desc = 'Search and remplace', noremap = true }) -- Búscar y remplazar
-- Para reemplazar, utiliza el comando :%s/patrón/reemplazo/g.
-- Donde patrón es el texto que deseas reemplazar y reemplazo es el nuevo texto.
-- El modificador g al final del comando reemplaza todas las apariciones en
-- una línea. Sin g, solo reemplaza la primer.


-- Call Neotree
map('n', '<C-n>', '<cmd>Neotree reveal toggle<cr>', { desc = 'Call Neotree', noremap = true, silent = true })

-- Call Lazy
map("n", "<C-l>", "<cmd>Lazy<CR>", { noremap = true, silent = true, desc = "Open LazyVim" })

-- Call Telescope
map('n', '<C-t>', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- Call Explore
map('n', '<C-e>', ':Explore<CR>', { noremap = true, silent = true })

map('n', 'n', 'nzzzv', { desc = "Goes to the next result on the seach and put the cursor in the middle"})
map('n', 'N', 'Nzzzv', { desc = "Goes to the prev result on the seach and put the cursor in the middle"})
