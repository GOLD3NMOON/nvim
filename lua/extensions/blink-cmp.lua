local icons = {
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
}

return {
    "saghen/blink.cmp",
    dependencies = "rafamadriz/friendly-snippets",
        version =  "*",
    opts = {
        keymap = {
            preset = "default",
            ["<CR>"] = { "accept", "fallback" },
        },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
            kind_icons = icons
        },
        completion = {
            menu = {
                border = "rounded",
                winhighlight = "Normal:CmpDoc,FloatBorder:CmpDoc,Search:None",
                auto_show = true
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
    },
}
