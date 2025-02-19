return {
  'nvim-java/nvim-java',
  dependencies = {
    "nvim-java/lua-async-await",
    "nvim-java/nvim-java-core",
    "nvim-java/nvim-java-test",
    "nvim-java/nvim-java-dap",
    "MunifTanjim/nui.nvim",
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    "ibhagwan/fzf-lua", -- optional
    {
      "williamboman/mason.nvim",
      opts = {
        registries = {
          'github:nvim-java/mason-registry',
          'github:mason-org/mason-registry'
        },
      },
    },
  },
  config = function()
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'LSP declaration' })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP definition' })
    vim.keymap.set('n', 'gr', function()
      require("telescope.builtin").lsp_references()
    end, { desc = 'LSP references' })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'LSP implementation' })
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP hover' })
    vim.keymap.set('n', '<leader>ra', function()
      require("nvchad.renamer").open()
    end, { desc = 'LSP rename' })
    vim.keymap.set('n', '<leader>ca', function()
      vim.lsp.buf.code_action()
    end, { desc = 'LSP code action' })
    vim.keymap.set('n', '<leader>ds', vim.lsp.buf.document_symbol, { desc = 'Document Symbols' })
    vim.keymap.set('n', '<leader>ws', vim.lsp.buf.workspace_symbol, { desc = 'Workspace Symbols' })
    vim.keymap.set('n', '<leader>sd', vim.diagnostic.open_float, { desc = 'Show Diagnostics' })
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous Diagnostic' })
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next Diagnostic' })
    vim.keymap.set('n', '<leader>fs', ":FzfLua lsp_workspace_symbols<CR>", { desc = 'Find beans' })

    vim.api.nvim_set_keymap('n', '<leader>crc', ':JavaRefactorExtractConstant<CR>', { desc = "Extract Constant" })
    vim.api.nvim_set_keymap('n', '<leader>crv', ':JavaRefactorExtractVariable<CR>', { desc = "Extract Variable" })
    vim.api.nvim_set_keymap('n', '<leader>crm', ':JavaRefactorExtractMethod<CR>', { desc = "Extract Method" })
    vim.api.nvim_set_keymap('n', '<leader>crf', ':JavaRefactorExtractField<CR>', { desc = "Extract Field" })
    vim.api.nvim_set_keymap('n', '<leader>cra', ':JavaRefactorExtractVariableAllOccurrence<CR>',
      { desc = "Extract All occurrences of value" })
  end,
}
