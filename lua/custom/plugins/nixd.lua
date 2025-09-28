return {
  vim.lsp.config('nixd', {
    cmd = { 'nixd' },
    settings = {
      nixd = {
        nixpkgs = {
          expr = 'import <nixpkgs> { }',
        },
        formatting = {
          command = { 'nixpkgs-fmt' }, -- or nixfmt or nixpkgs-fmt
        },
        options = {
          nixos = {
            expr = '(builtins.getFlake ~/.nixos).nixosConfigurations.default.options',
          },
          home_manager = {
            expr = '(builtins.getFlake "~/.nixos").homeConfigurations.default.options',
          },
        },
      },
    },
  }),
}
