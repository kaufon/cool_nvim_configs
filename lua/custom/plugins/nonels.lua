local nonels =

{
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  opts = function()
    return require "custom.configs.null-ls"
  end,
}
return nonels
