return {
  vim.lsp.config('clangd', {
    cmd = { 'clangd', '--cross-file-rename' },
    filetypes = { 'c', 'h', 'cpp', 'hpp'},
  }),

  vim.lsp.enable('clangd', true),
}
