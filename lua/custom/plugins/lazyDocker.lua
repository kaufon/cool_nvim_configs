local lazyDocker =
{
  "crnvl96/lazydocker.nvim",
  event = "VeryLazy",
  opts = {},  -- automatically calls `require("lazydocker").setup()`
  dependencies = {
    "MunifTanjim/nui.nvim",
  }
}
return lazyDocker
