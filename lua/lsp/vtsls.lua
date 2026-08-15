return {
  vim.lsp.config('vtsls', {
    filetypes = {
      'javascript', "typescript",
      'javascriptreact', "typescriptreact",
    },
    cmd = { "vtsls", "--stdio" },
  }),

  vim.lsp.enable('vtsls', true),
}
