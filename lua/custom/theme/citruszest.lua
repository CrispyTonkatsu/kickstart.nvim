return {
  'zootedb0t/citruszest.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('citruszest').setup {
      option = {
        transparent = true, -- Enable/Disable transparency
        bold = true,
        italic = true,
      },
    }

    local lualine = require 'lualine'

    lualine.setup {
      options = {
        theme = 'citruszest',
      },
    }

    vim.cmd 'colorscheme citruszest'
  end,
}
