local autoSave =

{
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
  },
}
return autoSave
