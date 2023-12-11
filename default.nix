let
  lib = import <nixpkgs/lib>;
in
lib.fileset.toSource {
  root = ./.;
  fileset = lib.fileset.gitTracked ./.;
}
