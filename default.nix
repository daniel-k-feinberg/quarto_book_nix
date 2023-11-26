# This file was generated by the {rix} R package v0.4.1 on 2023-11-26
# with following call:
# >rix::rix(r_ver = "824421b1796332ad1bcb35bc7855da832c43305f",
#  > r_pkgs = c("quarto",
#  > "tidyverse"),
#  > system_pkgs = c("quarto",
#  > "curl",
#  > "openssl"),
#  > git_pkgs = list(package_name = "rix",
#  > repo_url = "https://github.com/b-rodrigues/rix/",
#  > branch_name = "master",
#  > commit = "ea92a88ecdfc2d74bdf1dde3e441d008521b1756"),
#  > tex_pkgs = c("amsmath",
#  > "framed",
#  > "fvextra",
#  > "environ",
#  > "fontawesome5",
#  > "orcidlink",
#  > "pdfcol",
#  > "tcolorbox",
#  > "tikzfill"),
#  > ide = "code",
#  > project_path = ".",
#  > overwrite = TRUE,
#  > print = TRUE,
#  > shell_hook = "")
# It uses nixpkgs' revision 824421b1796332ad1bcb35bc7855da832c43305f for reproducibility purposes
# which will install R version 4.2.3
# Report any issues to https://github.com/b-rodrigues/rix
let
 pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/824421b1796332ad1bcb35bc7855da832c43305f.tar.gz") {};
 rpkgs = builtins.attrValues {
  inherit (pkgs.rPackages) quarto tidyverse languageserver;
};
 git_archive_pkgs = [(pkgs.rPackages.buildRPackage {
    name = "rix";
    src = pkgs.fetchgit {
      url = "https://github.com/b-rodrigues/rix/";
      branchName = "master";
      rev = "ea92a88ecdfc2d74bdf1dde3e441d008521b1756";
      sha256 = "sha256-fKNtFaWPyoiS7xOOlhjok3Ddqsij7CymoKAeTT8ygIU=";
    };
    propagatedBuildInputs = builtins.attrValues {
      inherit (pkgs.rPackages) httr jsonlite sys;
    };
  }) ];
 tex = (pkgs.texlive.combine {
  inherit (pkgs.texlive) scheme-small amsmath framed fvextra environ fontawesome5 orcidlink pdfcol tcolorbox tikzfill;
});
 system_packages = builtins.attrValues {
  inherit (pkgs) R glibcLocalesUtf8 quarto curl openssl;
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

    buildInputs = [ git_archive_pkgs rpkgs tex system_packages  ];
      
  }
