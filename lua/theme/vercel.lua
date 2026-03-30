return {
  'tiesen243/vercel.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('vercel').setup {
      theme = 'dark', -- String: Sets the theme to light or dark (Default: light)
      transparent = true, -- Boolean: Sets the background to transparent (Default: false)
      italics = {
        comments = true, -- Boolean: Italicizes comments (Default: true)
        keywords = true, -- Boolean: Italicizes keywords (Default: true)
        functions = false, -- Boolean: Italicizes functions (Default: true)
        strings = false, -- Boolean: Italicizes strings (Default: true)
        variables = false, -- Boolean: Italicizes variables (Default: true)
        bufferline = false, -- Boolean: Italicizes bufferline (Default: false)
      },
      overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
    }

    -- This must be called before setting the colorscheme, otherwise it will always default to light mode
    vim.cmd.colorscheme 'vercel'
  end,
}
