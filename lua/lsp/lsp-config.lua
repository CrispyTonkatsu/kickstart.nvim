return {
  'neovim/nvim-lspconfig',
  dependencies = require 'lsp.lsp-config-deps',

  config = function()
    -- Creating capabilities for cmp to complete stuff
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    -- TODO: Enable this conditionally for windows
    --
    -- local required_servers = {
    --   'clangd',
    --   'rust_analyzer',
    --   'lua_ls',
    --   'pyright',
    --   'json-lsp',
    --   'prettier',
    --   'language-server-bitbake',
    -- }
    --
    -- require('mason').setup()
    -- require('mason-tool-installer').setup {
    ensure_installed = required_servers
  }
  --require('mason-lspconfig').setup() end,
}
