local treeSitter =
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
}

return treeSitter
