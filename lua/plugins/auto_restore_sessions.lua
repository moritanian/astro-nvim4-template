-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      -- disable alpha autostart
      alpha_autostart = false,
      restore_session = {
        {
          event = "VimEnter",
          desc = "Restore previous directory session if neovim opened with no arguments",
          nested = true, -- trigger other autocommands as buffers open
          callback = function()
            local util = require "resession.util"
            local files = require "resession.files"

            local filename = util.get_session_file(vim.fn.getcwd(), "dirsession")
            local data = files.load_json_file(filename)
            if not data then
              -- vim.notify "no data!!"
              require("lazy").load { plugins = { "alpha-nvim" } }
              require("alpha").start(true)
              vim.schedule(function() vim.cmd.doautocmd "FileType" end)
              return
            end
            -- Only load the session if nvim was started with no args
            if vim.fn.argc(-1) == 0 then
              -- try to load a directory session using the current working directory
              require("resession").load(vim.fn.getcwd(), { dir = "dirsession", silence_errors = true })
            end
            -- local list = require("resession").list { dir = "dirsession" }
            -- vim.notify(filename .. " " .. vim.fn.getcwd() .. " list: " .. table.concat(list, " , "))
          end,
        },
      },
    },
  },
}
