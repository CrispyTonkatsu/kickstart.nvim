return {
  vim.lsp.config('language-server-bitbake', {
    cmd = { 'language-server-bitbake' },

    settings = {
      cmd = { 'language-server-bitbake', '--stdio' },
      filetypes = { 'bb' },
      root_dir = { 'conf/loca.conf', '.git' },

      mason = false,
    },
  }),
}
