return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  keys = { ":", "/", "?" }, -- lazy load cmp on more keys along with insert mode
  dependencies = {
    "hrsh7th/cmp-cmdline", -- add cmp-cmdline as dependency of cmp
    { -- Copilot integration
      "zbirenbaum/copilot.lua",
      config = function()
        require("copilot").setup {
          suggestion = { enabled = true },
          panel = { enabled = false },
        }
      end,
    },
    { -- Copilot source for cmp
      "zbirenbaum/copilot-cmp",
      after = { "copilot.lua" },
      config = function() require("copilot_cmp").setup() end,
    },
  },
  config = function(plugin, opts)
    local cmp = require "cmp"

    opts.sources = cmp.config.sources {
      { name = "copilot" }, -- Add Copilot as a source
      { name = "nvim_lsp" }, -- LSP completion
      { name = "buffer" }, -- Buffer completion
      { name = "path" }, -- Path completion
    }

    -- run cmp setup
    cmp.setup(opts)

    -- configure `cmp-cmdline` as described in their repo: https://github.com/hrsh7th/cmp-cmdline#setup
    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        {
          name = "cmdline",
          option = {
            ignore_cmds = { "Man", "!" },
          },
        },
      }),
    })
  end,
}
