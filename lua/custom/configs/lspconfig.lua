local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach 
local capabilities = base.capabilities
local lspconfig = require("lspconfig")

local servers = {
  "clangd",
  "pyright",
  "solargraph",
  "lua-language-server",
  "html-lsp",
  "htmx-lsp"

}
for _, server_name in ipairs(servers) do
  lspconfig[server_name].setup({
    on_attach = function (client,bufnr)
      client.server_capabilities.signatureHelpProvider = false
      on_attach(client,bufnr)
    end,
    capabilities = capabilities
  })
end



