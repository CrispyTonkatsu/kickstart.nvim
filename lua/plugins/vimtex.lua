return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  ft = 'tex',
  init = function()
    if vim.loop.os_uname().sysname == 'Darwin' then
      vim.g.vimtex_view_method = 'skim'
    else
      vim.g.vimtex_view_method = 'zathura'
    end

    vim.g.vimtex_quickfix_open_on_warning = 0
    vim.g.vimtex_multiple_compile_formats = { 'pdf', 'bibtex' }
  end,
}
