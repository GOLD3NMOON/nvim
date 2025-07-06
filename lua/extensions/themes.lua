return {
    {
        "EdenEast/nightfox.nvim",
        opts = {
            transparent = true
        },
        config = function (_, opts)
            require('nightfox').setup({
                options = opts
            })
        end
    }
}
