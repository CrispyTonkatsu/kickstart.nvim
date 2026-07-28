return {
  -- TODO: Make all other configs like this
  'neovim/nvim-lspconfig',
  config = function()
    vim.lsp.config('rust_analyzer', {
      settings = {
        ['rust-analyzer'] = {
          check = {
            command = "clippy",
          },
        },
      },
    })

    vim.lsp.enable('rust_analyzer')
  end
}
