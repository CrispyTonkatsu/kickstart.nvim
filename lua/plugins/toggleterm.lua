return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    open_mapping = [[<c-\>]],
    direction = 'float',

    float_opts = {
      border = 'double',
    },

    shell = 'nu',
  },

  vim.keymap.set('t', '<C-Esc>', '<C-\\><C-n>', { remap = false })
}
