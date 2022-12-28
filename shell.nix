{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [
    elmPackages.nodejs
    (yarn.override { nodejs = elmPackages.nodejs; })
  ];
}