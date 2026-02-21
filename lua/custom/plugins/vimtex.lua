return {
  'lervag/vimtex',
  lazy = true, -- we don't want to lazy load VimTeX
  ft = 'tex',
  init = function()
    if has 'macunix' then
      vim.g.vimtex_view_method = 'skim'
    else
      vim.g.vimtex_view_method = 'zathura'
    end

    vim.g.vimtex_quickfix_open_on_warning = 0
    vim.g.vimtex_multiple_compile_formats = { 'pdf', 'bibtex' }
  end,
}
