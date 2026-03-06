return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          on_attach = function(client, _)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end,
        },
      },
    },
  },
}
