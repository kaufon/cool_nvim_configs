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
        "clangd",
        "pyright",
        "solargraph"
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
