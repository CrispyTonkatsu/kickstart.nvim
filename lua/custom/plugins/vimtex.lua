return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  ft = 'tex',
  init = function()
    vim.g.vimtex_view_method = 'zathura'
  end,
}
