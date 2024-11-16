return {
  -- Add the Catppuccin theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- Load the theme immediately
    priority = 1000, -- Ensure it loads before other plugins
    opts = {
      flavour = "mocha", -- Set the Latte flavor
    },
  },

  -- Override LazyVim's default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
