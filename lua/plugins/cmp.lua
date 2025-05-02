-- return {
--   "hrsh7th/nvim-cmp",
--   event = "InsertEnter",
--   dependencies = {
--     "hrsh7th/cmp-nvim-lsp",
--     "onsails/lspkind.nvim", -- ícones bonitinhos
--   },
--   config = function()
--     local cmp = require("cmp")
--     local lspkind = require("lspkind")
--
--     cmp.setup({
--       snippet = {
--         expand = function() end, -- desabilita snippets
--       },
--       mapping = cmp.mapping.preset.insert({
--         ["<CR>"] = cmp.mapping.confirm({ select = true }),
--       }),
--       sources = {
--         { name = "nvim_lsp" },
--         { name = "buffer" }
--       },
--       formatting = {
--         format = lspkind.cmp_format({
--           mode = "symbol_text",
--           maxwidth = 50,
--           ellipsis_char = "...",
--         }),
--       },
--       window = {
--         completion = cmp.config.window.bordered(),
--         documentation = cmp.config.window.bordered(),
--       },
--     })
--   end,
-- }
return {
	{
		"saghen/blink.cmp",
		dependencies = "rafamadriz/friendly-snippets",
		version = "*",
        event = "InsertEnter",
		opts = function(_, opts)
			local blink = require("blink.cmp")

			return {

				keymap = {
					preset = "default",
					["<CR>"] = { "accept", "fallback" },
				},

				appearance = {
					use_nvim_cmp_as_default = true,
					nerd_font_variant = "mono",
					kind_icons = {
						Text = "",
						Method = "",
						Function = "",
						Constructor = "",
						Field = "",
						Variable = "",
						Class = "",
						Interface = "",
						Module = "",
						Property = "",
						Unit = "",
						Value = "",
						Enum = "",
						Keyword = "",
						Snippet = "",
						Color = "",
						File = "",
						Reference = "",
						Folder = "",
						EnumMember = "",
						Constant = "",
						Struct = "",
						Event = "",
						Operator = "",
						TypeParameter = "",
					},
				},

				completion = {
					menu = {
						border = "rounded",
						winhighlight = "Normal:CmpDoc,FloatBorder:CmpDoc,Search:None",
					},
					documentation = {
						window = {
							border = "rounded",
							winhighlight = "Normal:CmpDoc,FloatBorder:CmpDoc,Search:None",
							max_width = 80,
							max_height = 12,
						},
                        auto_show = true
					},
				},
				signature = {
					window = {
						border = "rounded",
					},
				},

				sources = {
					default = { "lsp", "path", "snippets", "buffer" },
				},
			}
		end,
	},
}
