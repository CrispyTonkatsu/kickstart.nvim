return {
  vim.lsp.config('clangd', {
    cmd = { 'clangd', '--cross-file-rename' },
  }),
}
