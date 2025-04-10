return {
  'ThePrimeagen/harpoon',
  lazy = false,
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd to harpoon list' })

    vim.keymap.set('n', '<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Op[e]n Harpoon Window' })

    vim.keymap.set('n', 'H', function()
      harpoon:list():prev()
    end, { desc = 'Previous Buffer in [H]arpoon List' })

    vim.keymap.set('n', 'L', function()
      harpoon:list():next()
    end, { desc = 'Next Buffer in Harpoon [L]ist' })

    for i = 1, 5, 1 do
      vim.keymap.set('n', string.format('<leader>%d', i), function()
        harpoon:list():select(i)
      end, { desc = string.format('Select Harpoon Buffer [%s]', i) })

      vim.keymap.set('n', string.format('<leader>d%d', i), function()
        harpoon:list():remove_at(i)
      end, { desc = string.format('Remove Harpoon Buffer [%s]', i) })
    end
  end,
}
