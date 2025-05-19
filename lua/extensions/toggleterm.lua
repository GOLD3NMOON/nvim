return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            size = 10,
            open_mapping = [[<c-j>]],
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            terminal_mappings = true,
            persist_size = true,
            direction = "horizontal",
            shell = '/usr/bin/fish',
        })
	end,
}
