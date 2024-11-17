return {
  'mellow-theme/mellow.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.g.mellow_transparent = true
    vim.cmd 'colorscheme mellow'
  end,
}
