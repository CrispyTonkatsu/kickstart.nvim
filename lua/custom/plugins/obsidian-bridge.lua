return {
  'oflisback/obsidian-bridge.nvim',
  opts = {
    obsidian_server_address = 'https://127.0.0.1:27124',
    cert_path = '~/MyNotes/obsidian-local-rest-api.crt',
  },
  event = {
    'BufReadPre *.md',
    'BufNewFile *.md',
  },
  lazy = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('obsidian-bridge').setup {}
  end,
}
