return {
  'sailorfe/perona.nvim',
  init = function()
    require('perona').setup {
      transparent = true,
    }

    vim.cmd.colorscheme 'perona'
  end,
}
