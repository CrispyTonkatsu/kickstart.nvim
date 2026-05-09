{
  description = "The flake to edit my nvim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      local-system:
      let
        pkgs = nixpkgs.legacyPackages.${local-system};
      in
      {
        devShells.default = pkgs.mkShell {
          name = "nvim config";

          packages = with pkgs; [
            lua-language-server
          ];
        };
      }
    );
}
