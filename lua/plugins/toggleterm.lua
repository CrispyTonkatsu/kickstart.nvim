return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    open_mapping = [[<c-\>]],
    direction = 'float',

    shell = 'nu',
  },

  vim.keymap.set('t', '<C-Esc>', '<C-\\><C-n>', { remap = false }),
}
