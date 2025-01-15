return {
  'Yazeed1s/minimal.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- require('oh-lucy').setup {}
    -- setup must be called before loading
    vim.g.minimal_transparent_background = true
    vim.cmd 'colorscheme minimal'
  end,
}
