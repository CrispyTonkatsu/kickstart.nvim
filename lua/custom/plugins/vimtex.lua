return {
  'lervag/vimtex',
  lazy = true, -- we don't want to lazy load VimTeX
  ft = 'tex',
  init = function()
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_quickfix_open_on_warning = 0
    vim.g.vimtex_multiple_compile_formats = { 'pdf', 'bibtex' }
  end,
}
