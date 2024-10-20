with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "your-package";
    inherit ruby;
    gemdir = ./.;
  };
in stdenv.mkDerivation {
  name = "your-package";
  buildInputs = [gems ruby];
}