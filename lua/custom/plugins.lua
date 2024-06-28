local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'hyper',
        config = {

          header = {
            [[     ██╗    █████╗    ██████╗   ██╗   ██╗  ██╗   ███████╗]],
            [[    ██║   ██╔══██╗   ██╔══██╗  ██║   ██║  ██║   ██╔════╝]],
            [[    ██║   ███████║   ██████╔╝  ██║   ██║  ██║   ███████╗]],
            [[██   ██║   ██╔══██║   ██╔══██╗  ╚██╗ ██╔╝  ██║   ╚════██║]],
            [[╚█████╔╝██╗██║  ██║██╗██║  ██║██╗╚████╔╝██╗██║██╗███████║]],
            [[╚════╝ ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═╝ ╚═══╝ ╚═╝╚═╝╚═╝╚══════╝]],
            [[ ]],
          },
          footer = {
            [[ ]],
            [[🤖 Enjoy your coding session today sir. ]]
          },

          shortcut = {
            { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
            { desc = ' Config', action = 'edit ~/.config/nvim/lua/custom/plugins.lua', key = 'c' },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Files',
              group = 'Label',
              action = 'Telescope find_files',
              key = 'f',
            },
            { desc = ' Exit dashboard', action = 'edit .', key = 'x' },
          },
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },
  {
    event = "VeryLazy",
    "David-Kunz/gen.nvim"
  },
  {
    event = "VeryLazy",
    "tpope/vim-rails",
  },
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    version = false,
    config = function()
      require('mini.ai').setup()
    end
  },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      {
        'tpope/vim-dadbod',
        lazy = true,
        cmd = { "DB" },
      },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        signature = {
          enabled = false,
        },
        hover = {
          enabled = false,
        }
      },
      views = {
        cmdline_popup = {
          position = {
            row = 18,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 21,
            col = "50%",
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        }
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    event = "VeryLazy",
    "tpope/vim-fugitive",
  },
  {
    "tris203/precognition.nvim",
    event = "VeryLazy",
    config = {
      -- startVisible = true,
      -- showBlankVirtLine = true,
      -- highlightColor = { link = "Comment" },
      -- hints = {
      --      Caret = { text = "^", prio = 2 },
      --      Dollar = { text = "$", prio = 1 },
      --      MatchingPair = { text = "%", prio = 5 },
      --      Zero = { text = "0", prio = 1 },
      --      w = { text = "w", prio = 10 },
      --      b = { text = "b", prio = 9 },
      --      e = { text = "e", prio = 8 },
      --      W = { text = "W", prio = 7 },
      --      B = { text = "B", prio = 6 },
      --      E = { text = "E", prio = 5 },
      -- },
      -- gutterHints = {
      --     G = { text = "G", prio = 10 },
      --     gg = { text = "gg", prio = 9 },
      --     PrevParagraph = { text = "{", prio = 8 },
      --     NextParagraph = { text = "}", prio = 8 },
      -- },
    },
  },
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    event = "BufEnter",
    opts = {
      disabled_keys = {
        ["<Up>"] = { "", },
        ["<Down>"] = { "", },
        ["<Left>"] = { "", },
        ["<Right>"] = { "", },
      },
    },

  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
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
        "rubocop",
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
        "mypy",
        "pylint",
        "black",
        "solhint",
      }
    }
  },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
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
    config = function()
      require("tailwind-tools").setup({
        --banana
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
      "html",
      "erb",
      "eruby",
      "embedded_template",
    },
    config = function()
      require("nvim-ts-autotag").setup()
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
        "ruby",
        "embedded_template",
        "sql",
        "python",
      }
      return opts
    end
  },
}

return plugins
