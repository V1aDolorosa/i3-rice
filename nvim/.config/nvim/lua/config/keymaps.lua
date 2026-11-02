-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<F5>", function()
  vim.cmd("w")
  vim.cmd("!" .. "python " .. vim.fn.shellescape(vim.fn.expand("%:p")))
end, { desc = "Run current Python file" })
