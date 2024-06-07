local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
      
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        --mason package name goes here,for consult go to: https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc%2Fserver-mapping.md
        "clangd",
        "pyright",
        "solargraph",
        "lua-language-server",
     -- "html-lsp",
        "htmx-lsp",
        "docker-compose-language-service",
        "dockerfile-language-server"
      }
    }
  },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",
    event = {"InsertLeave","TextChanged"},
    opts = {

    },
  },
}

return plugins
