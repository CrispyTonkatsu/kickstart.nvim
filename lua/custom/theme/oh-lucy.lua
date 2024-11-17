return {
  'Yazeed1s/oh-lucy.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- require('oh-lucy').setup {}
    -- setup must be called before loading
    vim.g.oh_lucy_transparent_background = true
    vim.cmd 'colorscheme oh-lucy'
  end,
}
