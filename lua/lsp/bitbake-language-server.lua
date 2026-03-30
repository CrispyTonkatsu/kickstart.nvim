return {
  vim.lsp.config('language-server-bitbake', {
    cmd = { 'language-server-bitbake' },

    settings = {
      cmd = { 'language-server-bitbake', '--stdio' },
      filetype = { 'bb' },
      root_dir = { 'conf/loca.conf', '.git' },
    },
  }),
}
