return {
    "mtfrsantos/nvim-workspaces",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function(_, opts)
        require('workspaces').setup({
            file_path = vim.fn.stdpath("config") .. "/lua/settings/workspaces.json"
        })
    end
}
