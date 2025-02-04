return {
  "ggandor/leap.nvim",
  init = function()
    require('leap')

    vim.keymap.set('n', 'f', '<Plug>(leap)')
    vim.keymap.set('n', 'F', '<Plug>(leap-from-window)')
    vim.keymap.set({ 'x', 'o' }, 'f', '<Plug>(leap-forward)')
    vim.keymap.set({ 'x', 'o' }, 'F', '<Plug>(leap-backward)')
    require('leap').opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
    require('leap.user').set_repeat_keys('\\', '<backspace>')  -- Added the simple backslash key
  end,
  dependencies = {
    "tpope/vim-repeat"
  },
  lazy = false
}
