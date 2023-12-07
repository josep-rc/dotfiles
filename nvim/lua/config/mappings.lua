
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', {desc = 'Explorer'})
vim.keymap.set('n', '<tab>', '<cmd>bnext<cr>', {desc = 'Next buffer'})
vim.keymap.set('n', '<S-tab>', '<cmd>bprev<cr>', {desc = 'Previous buffer'})
vim.keymap.set('n', '<C-w>', '<cmd>bd<cr>', {desc = 'Close current buffer'})
