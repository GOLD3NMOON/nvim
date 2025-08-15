local mappings = require('settings.mapping')

return  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = {
        open_mapping = mappings.toggle_term.key
    },
}
