return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- Enable inline Git blame
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- Show blame at the end of the line
      delay = 100, -- Delay in milliseconds before showing blame
      ignore_whitespace = false,
    },
    current_line_blame_formatter = " <author>, <author_time:%y', %b, %d> - <summary>", -- Customize the blame format
  },
}
