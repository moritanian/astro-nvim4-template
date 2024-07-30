-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
-- extension = {
-- foo = "fooscript",
-- },
-- filename = {
-- ["Foofile"] = "fooscript",
-- },
-- pattern = {
-- ["~/%.config/foo/.*"] = "fooscript",
-- },
-- }

-- Markdown preview
vim.g.mkdp_auto_start = 1 -- ファイルを開いたときに自動的にプレビューを開始
vim.g.mkdp_auto_close = 1 -- バッファを離れたときにプレビューを自動的に閉じる

-- カーソルがターミナルバッファに入った際に自動的に入力モードにする
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    if vim.bo.buftype == "terminal" then vim.cmd "startinsert" end
  end,
})

-- terminal
vim.keymap.set("t", "jj", [[<C-\><C-n>]])
vim.api.nvim_command "augroup terminal_setup | au!"
vim.api.nvim_command "autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i"
vim.api.nvim_command "augroup end"
require("toggleterm").setup {
  start_in_insert = true,
  persist_mode = true,
}

-- vertical split with alpha
vim.api.nvim_create_user_command("Avsplit", function()
  -- 新しいウィンドウをVertical splitで開く
  vim.cmd "vsplit"
  -- `alpha`を表示するために新しいバッファを開く
  vim.cmd "Alpha"
end, { desc = "Vertical split and show alpha" })

vim.keymap.set("n", "|", "<cmd>Avsplit<CR>")
