-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here


-- reads axlsx files like a ruby file
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.axlsx",
  callback = function()
    vim.bo.filetype = "ruby"
  end,
})
