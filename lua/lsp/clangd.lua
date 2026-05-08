return {
  vim.lsp.config('clangd', {
    cmd = { 'clangd', '--cross-file-rename' },
  }),

  vim.lsp.enable('clangd', true),
}
