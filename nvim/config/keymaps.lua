-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>dd", "<cmd>Dashboard<cr>", { desc = "Open Dashboard" })
vim.keymap.set("n", "<leader>r", function()
  vim.cmd("w")
  vim.cmd("TermExec cmd='clear && python3 src/main.py'")
end)