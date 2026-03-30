return {
  vim.lsp.config('asm-lsp', {
    cmd = { 'asm-lsp' },

    root_markers = { '.git' },

    settings = {
      filetypes = { 'asm', 's', 'S' }
    }
  }),

  vim.lsp.enable('asm-lsp', true),
}
