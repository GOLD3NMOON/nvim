local mappings = require('settings.mapping')

return {
      "folke/snacks.nvim",
      priority = 1000,
      lazy = false,
      opts = {
          layout = {
              enabled = true,
              width = 0.6,
              height = 0.6,
              zindex = 50,
          },
          statuscolumn = {
              enabled = true
          },
          input = {
              enabled = true,
              icon = " ",
              icon_hl = "SnacksInputIcon",
              icon_pos = "left",
              prompt_pos = "title",
              win = { style = "input" },
              expand = true,
          },
          explorer = {
              enabled = true,
          },
          indent = {
              enabled = true,
              priority = true,
              only_scope = true,
              only_current = true
          },
          notifier = {
              enabled = true,
              timeout = 3000
          },
          animate = {
              duration = 20,
              easing = "linear",
              fps = 60
          },
      },
      keys = {
          { 
            mappings.snacks.explorer.key,
            function()
                Snacks.explorer()
            end,
            desc = mappings.snacks.explorer.desc
          },
      }
}
