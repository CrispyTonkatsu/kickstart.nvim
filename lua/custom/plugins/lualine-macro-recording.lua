return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    -- display macro recording
    { 'yavorski/lualine-macro-recording.nvim' },
  },
  opts = {
    sections = {
      -- add to section of your choice
      lualine_c = { 'macro_recording', '%S' },
    },
  },
}
