return {
  'everviolet/nvim',
  name = 'evergarden',
  priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
  opts = function()
    require('evergarden').setup {
      theme = {
        variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
        accent = 'cherry',
      },
      editor = {
        transparent_background = true,
        sign = { color = 'none' },
        float = {
          color = 'none',
          invert_border = false,
        },
        completion = {
          color = 'surface0',
        },
      },
    }

    vim.cmd 'colorscheme evergarden'
  end,
}
