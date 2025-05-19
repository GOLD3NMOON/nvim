return {
    {
        "mason-org/mason.nvim",
        opts = {},
        config = function(_, opts)
            require('mason').setup(opts)
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        event = { "BufReadPre", "BufNewFile" },
        depedencies = {
            'williamboman/mason.nvim',
            'neovim/nvim-lspconfig'
        },
        opts = {
            automatic_enable = true,
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end
            }
        },
        config = function(_, opts)
            require('mason-lspconfig').setup(opts)
        end
    },
    {
        "neovim/nvim-lspconfig"
    }
}
