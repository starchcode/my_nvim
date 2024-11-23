return {
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = { "markdown" }, -- Load only for Markdown files
    config = function()
      vim.g.mkdp_auto_start = 0 -- Set to 1 if you want the preview to start automatically
      vim.g.mkdp_auto_close = 0 -- Keeps the preview open even after switching files
    end,
  },
}
