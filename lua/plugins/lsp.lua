return {
  "neovim/nvim-lspconfig",
  opts = {
    -- make sure mason installs the server
    servers = {
      vtsls = {
        -- explicitly add default filetypes, so that we can extend
        -- them in related extras
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
      },
    },
  },
}
