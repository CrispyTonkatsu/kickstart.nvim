return {
  'comfysage/evergarden',
  priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
  lazy = false,
  opts = {},
  config = function()
    require('evergarden').setup {
      transparent_background = true,
      contrast_dark = 'hard', -- 'hard'|'medium'|'soft'
    }
    vim.cmd 'colorscheme evergarden'
  end,
}
