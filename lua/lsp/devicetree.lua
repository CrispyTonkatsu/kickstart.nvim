return {
  'neovim/nvim-lspconfig',
  opts = function(_, opts)
    local lspconfig = require 'lspconfig'
    local configs = require 'lspconfig.configs'
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    -- Automatically detect the parent folder containing both blinky and zephyr
    local cwd = vim.fn.getcwd()
    -- If you open nvim inside blinky/, the parent is workspace root.
    -- Adjust 'parent_dir' if your root is one level higher.
    local parent_dir = vim.fn.fnamemodify(cwd, ':h')
    local zephyr_path = parent_dir .. '/zephyr'
    local blinky_path = cwd -- or parent_dir .. '/blinky'

    if not configs.devicetree_ls then
      configs.devicetree_ls = {
        default_config = {
          cmd = { 'devicetree-language-server', '--stdio' },
          filetypes = { 'dts', 'dtsi' },
          root_dir = lspconfig.util.root_pattern('zephyr', '.git', '.'),
          settings = {
            devicetree = {
              defaultIncludePaths = {
                zephyr_path .. '/dts',
                zephyr_path .. '/dts/common',
                zephyr_path .. '/dts/arm',
                zephyr_path .. '/dts/arm64',
                zephyr_path .. '/dts/riscv',
                zephyr_path .. '/dts/vendor',
                zephyr_path .. '/dts/vendor/nordic',
                zephyr_path .. '/include',
              },
              cwd = blinky_path,
              defaultBindingType = 'Zephyr',
              defaultZephyrBindings = {
                zephyr_path .. '/dts/bindings',
              },
              autoChangeContext = true,
              allowAdhocContexts = true,
              contexts = {
                {
                  -- Ensure this points directly to your board file inside zephyr
                  dtsFile = zephyr_path .. '/boards/seeed/xiao_nrf52840_plus/xiao_nrf52840_plus_nrf52840_sense.dts',
                  compile_commands = blinky_path .. '/build/compile_commands.json',
                  overlays = { blinky_path .. '/app.overlay' },
                },
              },
            },
          },
          capabilities = capabilities,
        },
      }
    end

    lspconfig.devicetree_ls.setup {
      capabilities = capabilities,
    }
  end,
}
