{
  sources ? import ./nix/sources.nix,
}:
let
  lib = import (sources.nixpkgs + "/lib");
in
lib.fileset.toSource {
  root = ./.;
  fileset = lib.fileset.gitTracked ./.;
}
