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
          terminal = {
              bo = {
                filetype = "snacks_terminal",
              },
              wo = {},
              keys = {
                q = "hide",
                gf = function(self)
                  local f = vim.fn.findfile(vim.fn.expand("<cfile>"), "**")
                  if f == "" then
                    Snacks.notify.warn("No file under cursor")
                  else
                    self:hide()
                    vim.schedule(function()
                      vim.cmd("e " .. f)
                    end)
                  end
                end,
                term_normal = {
                  "<esc>",
                  function(self)
                    self.esc_timer = self.esc_timer or (vim.uv or vim.loop).new_timer()
                    if self.esc_timer:is_active() then
                      self.esc_timer:stop()
                      vim.cmd("stopinsert")
                    else
                      self.esc_timer:start(200, 0, function() end)
                      return "<esc>"
                    end
                  end,
                  mode = "t",
                  expr = true,
                  desc = "Double escape to normal mode",
                },
              },
        }
      },
      keys = {
          { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
          { "<leader>j",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
      }
}
