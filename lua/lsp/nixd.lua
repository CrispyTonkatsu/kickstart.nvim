return {
  vim.lsp.config('nixd', {
    cmd = { 'nixd' },

    settings = {
      nixd = {
        nixpkgs = {
          expr = 'import <nixpkgs> {}',
        },

        formatting = {
          command = { 'nixfmt' }, -- or nixfmt or nixpkgs-fmt
        },

        options = {
          darwin = {
            expr = '(builtins.getFlake (builtins.toString(~/.nixos))).darwinConfigurations.Erinas-MacBook-Pro.options',
          },

          nixos = {
            expr = '(builtins.getFlake (builtins.toString(~/.nixos))).nixosConfigurations."default".options',
          },

          home_manager = {
            expr = '(builtins.getFlake (builtins.toString ~/.nixos)).nixosConfigurations."default".options.home-manager.users.type.getSubOptions[]',
          },
        },
      },
    },
  }),

  vim.lsp.enable('nixd', true),
}
