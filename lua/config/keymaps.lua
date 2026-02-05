vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Moving through windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Moving to left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Moving to down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Moving to up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Moving to right' })


-- Moving through buffers
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { desc = 'Moving to next buffer' })
vim.keymap.set('n', '<S-h>', ':bprev<CR>', { desc = 'Moving to previous buffer' })
vim.keymap.set('n', '<leader>db', ':bd<CR>', { desc = 'Delete current buffer' })

-- Esc
-- vim.keymap.set('i', '<CapsLock>', '<Esc>', { noremap = true })
