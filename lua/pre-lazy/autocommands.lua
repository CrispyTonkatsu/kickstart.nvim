vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.hl_op()
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'dts', 'dtsi', 'overlay' },

  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = false

    vim.notify 'in dts file settings'
  end,
})
