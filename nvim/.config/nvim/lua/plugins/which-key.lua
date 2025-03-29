return {
  "folke/which-key.nvim",
  -- event = "VeryLazy",
  opts = {},
  keys = {
    { 
      "<leader>?", 
      config = function()
        local wk = require("which-key").show({global = false})
        wk.add({
          { "<leader>f", group = "file"},
          { "<leader>ff", "<cmd>Telescope find files<cr>", desc = "Find file", mode = "n" },
          { "<leader>b", group = "buffers", expand = function()
              return require("which-key.extras").expand.buf()
            end
          },
          {
            mode = {"n", "v"}, -- NORMAL and VISUAL mode
            { "<leader>q", "<cmd>q<cr>", desc = "Quit"},
            { "<leader>w", "<cmd>w<cr>", desc = "Write" },
          }
        })

      end,
      desc = "Buffer local keymaps (which-key)"
    }
  }
}
