library(rix)

rix(r_ver = "4.3.1",
    r_pkgs = c("quarto", "radian", "curl", "openssl", "tidyverse"),
    system_pkgs = "quarto", "curl", "libcurl4-openssl-dev", "libssl-dev"),
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
    ide = "rstudio",
    shell_hook = "",
    project_path = ".",
    overwrite = TRUE,
    print = TRUE)
