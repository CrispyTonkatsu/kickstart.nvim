return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('cyberdream').setup {
      variant = 'muted',
      transparent = true,
      italic_comments = true,
    }
    vim.cmd 'colorscheme cyberdream'
  end,
}
