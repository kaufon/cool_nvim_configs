local mason =
{
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      --mason package name goes here,for consult go to: https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc%2Fserver-mapping.md
      "clangd",
      "pyright",
      "rubocop",
      "lua-language-server",
      -- "html-lsp",
      "htmx-lsp",
      "docker-compose-language-service",
      "dockerfile-language-server",
      "tailwindcss-language-server",
      "solang",
      "typescript-language-server",
      "eslint-lsp",
      "prettierd",
      "mypy",
      "pylint",
      "black",
      "solhint",
    }
  }
}
return mason
