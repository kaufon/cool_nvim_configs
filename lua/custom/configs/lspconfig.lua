local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach 
local capabilities = base.capabilities
local lspconfig = require("lspconfig")

local servers = {
  -- lsp server name goes here,for consult go to: https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc%2Fserver-mapping.md
  "clangd",
  "pyright",
  "rubocop",
  "lua_ls",
  "html",
  "dockerls",
  "tailwindcss",
  "solang",
  "tsserver",
  "eslint",
  --"solang-llvm"
  --"htmx" is a work in progress to see progress go to: https://github.com/ThePrimeagen/htmx-lsp  | maybe in near future will work!

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
