return {
  'loctvl842/monokai-pro.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('monokai-pro').setup {
      transparent_background = true,
      filter = 'spectrum', -- classic | octagon | pro | machine | ristretto | spectrum
    }
    vim.cmd 'colorscheme monokai-pro'
  end,
}
