require('lint').linters_by_ft = {
  javascript = { 'biomejs' },
  typescript = { 'biomejs' },
  typescriptreact = {'biomejs'},
  javascriptreact = {'biomejs'},
}
vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost" }, {
  callback = function()
    local lint_status, lint = pcall(require, "lint")
    if lint_status then
      lint.try_lint()
    end
  end,
})
