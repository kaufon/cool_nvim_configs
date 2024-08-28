local base = require("plugins.configs.lspconfig")

local on_attach = base.on_attach

local capabilities = base.capabilities

local lspconfig = require("lspconfig")



local servers = {

  -- lsp server name goes here,for consult go to: https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc%2Fserver-mapping.md
  "clangd",
  "pyright",
  -- "solargraph",
  "lua_ls",
  "html",
  "jsonls",
  "yamlls",
  "dockerls",
  "tailwindcss",
  "solang",
  "solidity",
  "tsserver",
  "eslint",
  "ruby_lsp",
  --"solang-llvm"

}
for _, server_name in ipairs(servers) do
  lspconfig[server_name].setup({
    on_attach = function(client, bufnr)
      client.server_capabilities.signatureHelpProvider = false
      on_attach(client, bufnr)
    end,
    capabilities = capabilities
  })
end
