return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 40, -- Adjust width if needed
    },
  },
  keys = {
    { "<leader>e", function()
      require("neo-tree.command").execute({ toggle = true, position = "float" })
    end, desc = "Toggle Neo-tree (Floating)" },

    { "<leader>E", function()
      require("neo-tree.command").execute({ toggle = true, position = "left" })
    end, desc = "Toggle Neo-tree (Sidebar)" },
  },
}
