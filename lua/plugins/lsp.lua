-- ~/.config/nvim/lua/plugins/lsp.lua or filetype.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jinja_lsp = {
          filetypes = { "jinja", "html" },
        },
      },
    },
  },
}
