-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        [[⠀  ⣠⠖⠚⠉⠙⠲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀    ⠀⠀⠀⠀⠀⠀⠀⠀⣠⠾⠋⠉⠑⠢⣄⠀⠀⠀⠀⠀]],
        [[⠀⢀⡞⠁⠀⠀⠀⠀⠀⠈⠓⠦⠤⠤⠴⠖⠒⠉⠉⠉⠉⠉⠉⠉⠒⠲⠦⠤⠤⠴⠟⠁⠀⠀⠀⠀⠀⠈⢷⡀⠀⠀⠀]],
        [[⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣧⠀⠀⠀]],
        [[⢸⡇⢀⡴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢦⠀⢹⣆⠀⠀]],
        [[⠈⢧⡞⣴⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠠⣤⢧⡾⠙⠀⠀]],
        [[⠀⠈⢿⡇⠀⠀⠀⢠⠇⠀⠀⠀⠀⠀⠀⠀⠀⣾⣣⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⠀⠀⠀⢹⡾⠀⠀⠀⠀]],
        [[⠀⠀⠘⣇⠀⠀⢀⡾⠀⠀⠀⠀⣾⣿⠀⠀⢸⣯⣿⣿⣿⣿⡇⠀⠀⣿⣷⠄⠀⠀⠀⠀⠈⣷⠀⠀⠀⣼⠁⠀⠀⠀⠀]],
        [[⠀⠀⠀⠈⠳⠤⣼⠁⠀⠀⠀⠀⠈⠁⠀⠀⠸⣿⣿⣿⣿⣿⡇⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠘⣧⠤⠞⠁⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠻⠿⠿⠿⠟⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠘⠲⠴⠟⠦⠴⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠹⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
        [[⠀⠀⠀⠀⡟⠀⠀⠀⠀⡇⠀⠀⠀⠀⢸⣸⠃⠀⠀⠙⢷⣖⣃⣠⡤⠴⠖⠋⠉⠀⠀⠀⠀⠀⠀⠈⣷⠀  ⠀⠀⠀]],
        [[⠀⠀⠀⢸⡇⠀⠀⠀⠀⡇⠀⠀⠀⠀⢸⡟⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀⠀⠀⠀]],
        [[⠀⠀⠀⠈⣧⠀⠀⠀⠀⣷⠀⠀⠀⠀⣼⣇⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠘⣧⠀⠀⠀⢿⣀⡀⠀⠀⡿⢻⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡴⠟⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠈⠳⠤⠤⠼⢷⣇⣸⡾⠓⠚⠳⣄⣀⠀⠀⠀⠀⣀⣀⣀⣠⡤⠤⠴⠖⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      }
      return opts
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
  --{
  --  "github/copilot.vim",
  --  config = function()
  -- Copilot の設定をここに追加可能
  --    vim.g.copilot_no_tab_map = true -- TAB キーでの補完を無効化（例）
  --   end,
  --},
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      -- { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
