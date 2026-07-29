return {
  -- TODO: Make all other configs like this
  'neovim/nvim-lspconfig',
  config = function()
    vim.lsp.config('rust_analyzer', {
      settings = {
        ['rust-analyzer'] = {
          check = {
            command = "clippy",
          },
        },
      },
    })

    vim.lsp.enable('rust_analyzer')

    local targets_wasm = false
    vim.api.nvim_create_user_command('RustTargetToggle', function()
      targets_wasm = not targets_wasm

      local target = nil
      if targets_wasm then
        target = 'wasm32-unknown-unknown'
      end


      local clients = vim.lsp.get_clients({ name = 'rust_analyzer' })

      for _, client in ipairs(clients) do
        client.settings['rust-analyzer'] = client.settings['rust-analyzer'] or {}
        client.settings['rust-analyzer'].cargo = client.settings['rust-analyzer'].cargo or {}
        client.settings['rust-analyzer'].cargo.target = target

        client:notify('workspace/didChangeConfiguration', { settings = client.settings })
      end

      vim.lsp.config('rust_analyzer', {
        settings = {
          ['rust-analyzer'] = {
            cargo = {
              target = target
            },
          },
        },
      })

      local new_target = 'default'
      if targets_wasm then
        new_target = 'wasm32'
      end
      print('rust_analyzer target is now: ' .. new_target)
    end, {})
  end
}
