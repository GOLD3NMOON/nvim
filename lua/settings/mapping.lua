local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', opts)
