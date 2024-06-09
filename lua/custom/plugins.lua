local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
      
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
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
        "dockerfile-language-server",
        "tailwindcss-language-server",
        "solang",
        "typescript-language-server",
        "eslint-lsp",
        "prettierd",
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
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    config = function()
      require("tailwindcss-colorizer-cmp").setup({
        color_square_width = 2,
      })
    end
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
    config = function ()
      require("tailwind-tools").setup({
      -- your configuration
      })
    end
  },
  {
     "windwp/nvim-ts-autotag",
      ft = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "html"
      },
      config = function ()
        require ("nvim-ts-autotag").setup()
      end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
      }
      return opts
    end
  },
}

return plugins
