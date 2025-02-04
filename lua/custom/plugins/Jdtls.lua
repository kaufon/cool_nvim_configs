return {
  'nvim-java/nvim-java',
  dependencies = {
    "nvim-java/lua-async-await",
    "nvim-java/nvim-java-core",
    "nvim-java/nvim-java-test",
    "nvim-java/nvim-java-dap",
    "MunifTanjim/nui.nvim",
    "neovim/nvim-lspconfig",
    "mfussnegger/nvim-dap",
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
    vim.api.nvim_set_keymap('n', '<leader>crc', ':JavaRefactorExtractConstant<CR>', { desc = "Extract Constant" })
    vim.api.nvim_set_keymap('n', '<leader>crv', ':JavaRefactorExtractVariable<CR>', { desc = "Extract Variable" })
    vim.api.nvim_set_keymap('n', '<leader>crm', ':JavaRefactorExtractMethod<CR>', { desc = "Extract Method" })
    vim.api.nvim_set_keymap('n', '<leader>crf', ':JavaRefactorExtractField<CR>', { desc = "Extract Field" })
    vim.api.nvim_set_keymap('n', '<leader>cra', ':JavaRefactorExtractVariableAllOccurrence<CR>',{ desc = "Extract All occurrences of value" })
  end,
}
