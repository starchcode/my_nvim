-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.winbar = "%=%m %f"
vim.opt.wrap = true
vim.g.autoformat = false


-- following lines will show line numbers for active window only (where the cursor is!)
--
-- vim.api.nvim_create_autocmd("WinEnter", {
--   callback = function()
--     vim.wo.number = true       -- Show line numbers
--     vim.wo.relativenumber = true -- Optional: Show relative numbers
--   end,
-- })
--
-- vim.api.nvim_create_autocmd("WinLeave", {
--   callback = function()
--     vim.wo.number = false      -- Hide line numbers
--     vim.wo.relativenumber = false -- Hide relative numbers
--   end,
-- })


-- Define highlight groups for active and inactive windows
vim.cmd([[
  highlight ActiveWindow ctermbg=NONE guibg=NONE
  highlight InactiveWindow ctermbg=darkgray guibg=#1f2330
]])

-- Apply the highlight groups based on window activity
vim.api.nvim_create_autocmd("WinEnter", {
  callback = function()
    vim.wo.winhighlight = "Normal:ActiveWindow"
  end,
})

vim.api.nvim_create_autocmd("WinLeave", {
  callback = function()
    vim.wo.winhighlight = "Normal:InactiveWindow"
  end,
})
