return {
  {
    vim.lsp.config('asm-lsp', {
      cmd = { 'asm-lsp' },

      root_markers = { '.git' },

      settings = {
        filetypes = { 'asm', 's', 'S' }
      }
    }),

    vim.lsp.enable('asm-lsp', true),
  },
  {
    'ARM9/arm-syntax-vim',
    init = function()
      vim.cmd([[ au VimEnter,BufReadPost *.[sS] setl filetype=arm ]])
    end
  },
}
