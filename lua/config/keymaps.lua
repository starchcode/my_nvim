-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>dv", function()
  -- Get the current branch name
  local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD"):gsub("%s+", "")

  local main_branch_name = "master" -- change this to the name of the branch you want to compare to.

  -- Open Diffview comparing master and the current branch
  vim.cmd("DiffviewOpen " .. main_branch_name .. "..." .. branch)
end, { desc = "Diffview: Compare current branch with master" })
