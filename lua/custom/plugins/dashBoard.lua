local dashBoard =
{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {

        header = {
          [[     ██╗    █████╗    ██████╗   ██╗   ██╗  ██╗   ███████╗]],
          [[    ██║   ██╔══██╗   ██╔══██╗  ██║   ██║  ██║   ██╔════╝]],
          [[    ██║   ███████║   ██████╔╝  ██║   ██║  ██║   ███████╗]],
          [[██   ██║   ██╔══██║   ██╔══██╗  ╚██╗ ██╔╝  ██║   ╚════██║]],
          [[╚█████╔╝██╗██║  ██║██╗██║  ██║██╗╚████╔╝██╗██║██╗███████║]],
          [[╚════╝ ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═╝ ╚═══╝ ╚═╝╚═╝╚═╝╚══════╝]],
          [[ ]],
        },
        footer = {
          [[ ]],
          [[🤖 Enjoy your coding session today sir. ]]
        },

        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          { desc = ' Config', action = 'edit ~/.config/nvim/lua/custom/plugins.lua', key = 'c' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          { desc = ' Exit dashboard', action = 'edit .', key = 'x' },
        },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
return dashBoard
