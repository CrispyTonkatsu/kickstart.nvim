return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    open_mapping = [[<c-\>]],
    direction = 'float',

    float_opts = {
      border = 'double',
    },

    shell = 'fish',
    size = function(term)
      if term.direction == 'vertical' then
        return vim.o.columns * 0.4
      end
    end,
  },
}
