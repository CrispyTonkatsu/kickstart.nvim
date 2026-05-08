return {
  vim.lsp.config('language-server-bitbake', {
    cmd = { 'language-server-bitbake', '--stdio' },
    filetypes = { 'bb', 'bbappend', 'conf/*.conf' },

    settings = {
      root_dir = { 'conf/local.conf', '.git' },
    },
  }),
}
