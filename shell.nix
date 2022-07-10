let 
  nixpkgs = import <nixpkgs> {};
  PROJECT_ROOT = builtins.toString ./.;
in
  with nixpkgs;
  stdenv.mkDerivation {
    name = "pico-dev-env";
    buildInputs = [
      python3
      cmake
      minicom
      gcc-arm-embedded
      newlib-nano
    ];
    shellHook = ''
      export ROOT=${PROJECT_ROOT}
      export PATH="${PROJECT_ROOT}/bin:$PATH"
      export hardeningDisable=all
    '';
  }

