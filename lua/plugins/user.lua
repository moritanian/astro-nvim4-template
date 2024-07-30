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
}
