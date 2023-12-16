{ pkgs, python3Packages, ... }:

with python3Packages;
buildPythonApplication {
  pname = "simulations";
  version = "0.1.0";
  pyproject = true;
  nativeBuildInputs = [
    more-itertools
    setuptools
    wheel
  ];
  propagatedBuildInputs = [
    numpy
    matplotlib
    pkgs.libngspice
    pyspice
  ];
  src = ./.;
}

