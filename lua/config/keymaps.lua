local mapKey = require("utils.keyMapper").mapKey -- load the keyMapper function

-- Neotree toggle
-- if you press space + e, it will open the neotree or close the neotree in normal mode
mapKey('<leader>t', ':Neotree toggle<CR>', 'n')

-- clear search highlights
mapKey('<Esc>', ':nohlsearch<CR>', 'n') -- clear search highlights in normal mode with ESC

-- Split nnvigation easier, use Ctrl + hjkl to navigate between splits
mapKey('<C-h>', '<C-w><C-h>', 'n', { desc = 'Move focus to the left window' })
mapKey('<C-j>', '<C-w><C-j>', 'n', { desc = 'Move focus to the bottom window' })
mapKey('<C-k>', '<C-w><C-k>', 'n', { desc = 'Move focus to the top window' })
mapKey('<C-l>', '<C-w><C-l>', 'n', { desc = 'Move focus to the right window' })

-- Diagnostic keymaps (Find next and previous diagnostic)
mapKey('[d', vim.diagnostic.goto_prev, 'n', { desc = 'Go to previous [D]iagnostic message' })
mapKey(']d', vim.diagnostic.goto_next, 'n', { desc = 'Go to next [D]iagnostic message' })
mapKey('<leader>q', vim.diagnostic.setloclist, 'n', { desc = 'Open diagnostic [Q]uickfix list' })
mapKey('<leader>e', vim.diagnostic.open_float, 'n', { desc = 'Open diagnostic list [E]rror messages' })
