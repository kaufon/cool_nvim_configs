local tsAutoTag =

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
    "vue",
  },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
return tsAutoTag
