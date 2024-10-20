with (import <nixpkgs> { });

pkgs.mkShell {
  buildInputs = with pkgs; [
    bundler
    bundix
  ];

  shellHook = ''
    bundle config set --local force_ruby_platform true
    bundle lock
    bundix
  '';
}
