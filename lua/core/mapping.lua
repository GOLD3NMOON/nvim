local opts = { noremap = true, silent = true }
-- NvimTreeToggle
vim.keymap.set('n', '<leader>e', '<cmd>Telescope file_browser<CR>', opts)
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', opts)

