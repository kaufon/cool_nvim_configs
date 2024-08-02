local hardtime =
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
  }
}
return hardtime
