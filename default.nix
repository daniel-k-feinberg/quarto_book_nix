# This file was generated by the {rix} R package v0.4.1 on 2023-11-26
# with following call:
# >rix::rix(r_ver = "0bd59c54ef06bc34eca01e37d689f5e46b3fe2f1",
#  > r_pkgs = c("dplyr",
#  > "ggplot2"),
#  > system_pkgs = NULL,
#  > git_pkgs = NULL,
#  > ide = "rstudio",
#  > project_path = ".",
#  > overwrite = TRUE)
# It uses nixpkgs' revision 0bd59c54ef06bc34eca01e37d689f5e46b3fe2f1 for reproducibility purposes
# which will install R version latest
# Report any issues to https://github.com/b-rodrigues/rix
let
 pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/0bd59c54ef06bc34eca01e37d689f5e46b3fe2f1.tar.gz") {};
 rpkgs = builtins.attrValues {
  inherit (pkgs.rPackages) dplyr httr ggplot2 languageserver;
};
   system_packages = builtins.attrValues {
  inherit (pkgs) R glibcLocalesUtf8 openssl;
};
  in
  pkgs.mkShell {
    LOCALE_ARCHIVE = if pkgs.system == "x86_64-linux" then  "${pkgs.glibcLocalesUtf8}/lib/locale/locale-archive" else "";
    LANG = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";

    buildInputs = [  rpkgs  system_packages  ];
      shellHook = "R --vanilla";
  }
