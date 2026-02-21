return {
  vim.lsp.config('nixd', {
    cmd = { 'nixd' },

    settings = {
      nixd = {
        nixpkgs = {
          expr = 'import <nixpkgs> { }',
        },
        formatting = {
          command = { 'nixfmt' }, -- or nixfmt or nixpkgs-fmt
        },
        options = {
          nixos = {
            expr = '(builtins.getFlake (builtins.toStirng(~/.nixos))).nixosConfigurations."default".options',
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
