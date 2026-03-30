return {
  vim.lsp.config('language-server-bitbake', {
    cmd = { 'language-server-bitbake', '--stdio' },

    settings = {
      filetype = { 'bb', 'bbappend', 'conf/*.conf' },
      root_dir = { 'conf/local.conf', '.git' },
    },
  }),
}
