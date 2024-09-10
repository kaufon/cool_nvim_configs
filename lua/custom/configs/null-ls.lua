local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local opts = {
  sources = {
    null_ls.builtins.formatting.biome,
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.solhint,
    null_ls.builtins.diagnostics.rubocop,
    null_ls.builtins.formatting.rubocop,
    null_ls.builtins.formatting.erb_lint,
  },

  --on_attach = function (client,bufnr)
  --if client.supports_method("textDocument/formatting") then
  --vim.api.nvim_clear_autocmds({
  --group = augroup,
  --buffer = bufnr
  --})
  --vim.api.nvim_create_autocmd("BufWritePre",{
  --group = augroup,
  --buffer = bufnr,
  --callback = function ()
  --vim.lsp.buf.format({bufnr = bufnr})
  --end,
  --})
  --end
  --end
}

return opts
