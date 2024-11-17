return {
  'aliqyan-21/darkvoid.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('darkvoid').setup {
      transparent = true,
      glow = true,
    }
    vim.cmd 'colorscheme darkvoid'
  end,
}
