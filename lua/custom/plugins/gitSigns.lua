local gitSigns = {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  config = function()
    require("gitsigns").setup()
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
}
return gitSigns
