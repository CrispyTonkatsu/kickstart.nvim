return {
  '0xstepit/flow.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('flow').setup {
      theme = {
        style = 'dark', --  "dark" | "light"
        contrast = 'default', -- "default" | "high"
        transparent = true, -- true | false
      },
      colors = {
        mode = 'default', -- "default" | "dark" | "light"
        fluo = 'cyan', -- "pink" | "cyan" | "yellow" | "orange" | "green"
      },
      ui = {
        borders = 'inverse', -- "theme" | "inverse" | "fluo" | "none"
      },
    }
    vim.cmd 'colorscheme flow'
  end,
}
