{
  description = "Projeto Flutter com Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flutter = {
      url = "github:justinas/flutter-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flutter }:
    let
      system = "x86_64-linux";
    in {
      devShells.${system} = nixpkgs.lib.mkShell {
        buildInputs = [
          flutter.packages.flutter
          flutter.packages.flutter-sdk
        ];
      };
    };
}
