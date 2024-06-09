local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting",{})

local opts = {
  source ={
    null_ls.builtins.formatting.pretttierd,
  }
  on_attach = function (client,bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = group,
        buffer = bufnr
      })
      vim.api.nvim_create_autocmd("BufWritePre",{
        group = augroup,
        buffer = bufnr,
        callback = function ()
          
        end,
      })
    end
  end
}

return opts
