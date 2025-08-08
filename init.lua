pcall(require, 'settings.settings')
pcall(require, 'core.lazy')
pcall(require, 'settings.mapping')
pcall(require, 'settings.colorscheme')

vim.api.nvim_set_hl(0, "Normal",       { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder",  { bg = "NONE", ctermbg = "NONE" })
