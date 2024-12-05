return {
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Ensure plenary.nvim is included
    config = function()
      require("diffview").setup({
        -- Customize your Diffview configuration here
        enhanced_diff_hl = true, -- Example option for enhanced highlighting
        keymaps = {
          view = {
            -- Custom keybindings inside the Diffview view
          },
          file_panel = {
            -- Custom keybindings for file panel
          },
        },
      })
    end,
  },
}


 -- :DiffviewOpen master...<CURRENT BRANCH NAME> 
-- comparest master with current branch. 

