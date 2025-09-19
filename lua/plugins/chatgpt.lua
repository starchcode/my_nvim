return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    require("chatgpt").setup({
      api_key_cmd = "echo $OPENAI_API_KEY",
      openai_params = {
        model = "gpt-4.1-mini", -- cheaper and great for code fixes
        max_tokens = 800,      -- adjust depending on your needs
      },
      openai_edit_params = {
        model = "gpt-4.1-mini",
        temperature = 0,
        top_p = 1,
      },
    })
  end,
}

