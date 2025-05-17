return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'andrew-george/telescope-themes',
        'nvim-telescope/telescope-file-browser.nvim'
    },
    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = {
                  '^node_modules/',
                  '^%.venv/',
                },
            },
            extensions = {
                themes = {
                    persist = {
                        enabled = true,
                        path = vim.fn.stdpath("config") .. "/lua/settings/colorscheme.lua"
                    },
                }
            }
        })
        require('telescope').load_extension('themes')
    end
}
