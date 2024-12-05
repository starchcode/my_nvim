return {
  "NStefan002/screenkey.nvim",
  lazy = false,
  version = "*", 
  config = function()
    require("screenkey").setup({
      win_opts = {
        title = "starchcode",
        anchor = "SE", -- North-East (top-right corner)
        -- uncomment below to move to top right, maybe do anchor "NE"
        -- row = 0,
        -- col = vim.o.columns - 1,

        -- uncomment below to move down, center, a bit above below (For content)
        --
        row = math.floor(vim.o.lines / 1.5),
        col = math.floor((vim.o.columns + 40) / 2), -- Center horizontally (assuming width ~30)
      },
    })
  end,
}

-- use commmand : "Screenkey toggle" 
