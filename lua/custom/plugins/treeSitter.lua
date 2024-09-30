local treeSitter =
{
  "nvim-treesitter/nvim-treesitter",
  opts = function()
    opts = require "plugins.configs.treesitter"
    opts.ensure_installed = {
      "go",
      "lua",
      "javascript",
      "typescript",
      "tsx",
      "ruby",
      "embedded_template",
      "sql",
      "python",
      "c",
      "cpp",
      "css",
      "html",
      "json",
    }
    return opts
  end
}

return treeSitter
