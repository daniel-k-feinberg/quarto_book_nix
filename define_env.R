library(rix)

rix::rix(
  r_ver = "4.2.3",
  r_pkgs = c(
    "quarto, gt"
  ),
  system_pkgs = c(
    "quarto", 
    "curl",
    "gh", 
    "openssl"
  ),
  git_pkgs = list(package_name = "rix",
                   repo_url = "https://github.com/b-rodrigues/rix/",
                   branch_name = "master",
                   commit = "ea92a88ecdfc2d74bdf1dde3e441d008521b1756"),
  tex_pkgs = c(
    "amsmath",
    "framed",
    "fvextra",
    "environ",
    "fontawesome5",
    "orcidlink",
    "pdfcol",
    "tcolorbox",
    "tikzfill"
    ),
    ide = "code",
    shell_hook = "",
    project_path = ".",
    overwrite = TRUE,
    print = TRUE)
