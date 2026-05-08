return {
  -- Automatically install LSPs and related tools to stdpath for Neovim
  -- { 'mason-org/mason.nvim', config = true }, -- NOTE: Must be loaded before dependants
  -- 'mason-org/mason-lspconfig.nvim',
  -- -- TODO: set up 'jay-babu/mason-nvim-dap.nvim',
  -- 'WhoIsSethDaniel/mason-tool-installer.nvim',

  -- Useful status updates for LSP.
  -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
  { 'j-hui/fidget.nvim',    opts = {} },

  -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
  -- used for completion, annotations and signatures of Neovim apis
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },

  { 'Bilal2453/luvit-meta', lazy = true },
}
