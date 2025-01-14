return {
  'rebelot/kanagawa.nvim',
  config = function()
    require('kanagawa').setup {
      transparent = true, -- do not set background color
      terminalColors = false, -- define vim.g.terminal_color_{0,17}
      theme = 'dragon', -- Load "wave" theme when 'background' option is not set
    }
    vim.cmd 'colorscheme kanagawa'
  end,
}
