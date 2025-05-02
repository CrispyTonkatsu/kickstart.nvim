return {
  'nyoom-engineering/oxocarbon.nvim',
  config = function()
    -- require('oxocarbon').setup {}
    vim.cmd 'colorscheme oxocarbon'

    -- Trasparency
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })

    vim.api.nvim_set_hl(0, 'LineNrAbove', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { bg = 'none' })

    vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
  end,
}
