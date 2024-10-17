return {
  "ggandor/leap.nvim",
  init = function()
    require('leap')
    vim.keymap.set({ 'n', 'x', 'o' }, 'f', '<Plug>(leap-forward)')
    vim.keymap.set({ 'n', 'x', 'o' }, 'F', '<Plug>(leap-backward)')
    vim.keymap.set({ 'n', 'x', 'o' }, 'fg', '<Plug>(leap-from-window)')
  end,
  dependencies = {
    "tpope/vim-repeat"
  },
  lazy = false
}
