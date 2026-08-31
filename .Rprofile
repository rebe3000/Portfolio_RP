if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

options(
  blogdown.serve_site.startup = FALSE,
  blogdown.knit.on_save = FALSE,
  blogdown.method = "markdown",
  blogdown.hugo.server = c(
    "--disableFastRender",
    "-D",
    "-F",
    "--navigateToChanged"
  ),
  blogdown.hugo.version = "0.126.1"
)

