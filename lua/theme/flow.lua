return {
  '0xstepit/flow.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('flow').setup {
      theme = {
        style = 'dark', --  "dark" | "light"
        transparent = true,
      },
      colors = {
        fluo = 'cyan', -- "pink" | "cyan" | "yellow" | "orange" | "green"
        custom = {
          saturation = '50',
        },
      },
      ui = {
        borders = 'none', -- "theme" | "inverse" | "fluo" | "none"
      },
    }
    vim.cmd 'colorscheme flow'
  end,
}
