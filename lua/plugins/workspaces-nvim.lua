return {
    "mtfrsantos/nvim-workspaces",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = true,
    opts = {
        file_path = vim.fn.stdpath("config") .. "lua/settings/workspaces.json"
    }
}
