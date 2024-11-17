return {
  'sho-87/kanagawa-paper.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('kanagawa-paper').setup {
      undercurl = true,
      transparent = true,
      gutter = false,
    }
    -- setup must be called before loading
    vim.cmd 'colorscheme kanagawa-paper'
  end,
}
