{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      allSupportedSystems = [ "x86_64-linux" ];
      forAllSupportedSystems = nixpkgs.lib.genAttrs allSupportedSystems;
    in
    {
      devShells = forAllSupportedSystems (
        system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          default = pkgs.mkShell {
            buildInputs = [
              pkgs.just # A simple command runner
              pkgs.ghc # The Glasgow Haskell Compiler
              pkgs.haskell-language-server
              # TODO figure out the correct package for the build system
              # research differences between Cabal and Stack
              #pkgs.haskellPackages.Cabal_3_12_1_0 # Build tooling and dependency manager
            ];
          };
        }
      );
    };
}
