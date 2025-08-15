local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', opts)

return {
    telescope = {
        find_files = {
            key = '<leader>ff',
            desc = 'Telescope find files'
        }
    },
    toggle_term = {
        key = '<leader>j',
        desc = 'Toggle terminal'
    },
    snacks = {
        explorer = {
            key = '<leader>e',
            desc = 'Toggle explorer'
        }
    }
}
