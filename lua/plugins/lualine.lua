return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
      },
      sections = {
        lualine_c = {
          'filename',
          {
            'harpoon2',
            icon = '',
            indicators = { '󰎥', '󰎨', '󰎫', '󰎲', '󰎯' },
            active_indicators = { '󰬺', '󰬻', '󰬼', '󰬽', '󰬾' },
            color_active = { fg = '#fbe4dc' },
            _separator = ' ',
            no_harpoon = 'Harpoon not loaded',
          },
          'macro_recording',
        },
      },
    }
  end,
}
