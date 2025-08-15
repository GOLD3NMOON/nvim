local mappings = require('settings.mapping')

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'andrew-george/telescope-themes',
        'nvim-telescope/telescope-file-browser.nvim'
    },
    opts = {
        defaults = {
            file_ignore_patterns = {
                  '^node_modules/',
                  '^%.venv/', 
            }
        },
        extensions = {
            themes = {
                persist = {
                    path = vim.fn.stdpath('config') .. '/lua/settings/colorscheme.lua'
                }
            }
        }
    },
    keys = {
        {
            mappings.telescope.find_files.key,
            '<cmd>Telescope find_files<cr>',
            desc = mappings.telescope.find_files.desc
        }
    },
    init = function ()
        require('telescope').load_extension('themes')
    end
}
