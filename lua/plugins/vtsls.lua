return {
  vim.lsp.config('vtsls', {
    -- TODO: Configure the filetypes that are allowed
    cmd = { "vtsls", "--stdio" },
  }),

  vim.lsp.enable('vtsls', true),
}
