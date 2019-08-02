textblob <- NULL

.onLoad <- function(libname, pkgname) {
  textblob <<- reticulate::import("textblob", delay_load = TRUE, convert = TRUE)
}