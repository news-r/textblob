#' Create a blob
#' 
#' Create a \code{TextBlob}.
#' 
#' @param text Text to create a blob from.
#' @param ... Any other options passed to \code{TextBlob}.
#' 
#' @import purrr
#' @import reticulate
#' 
#' @examples
#' \dontrun{
#' text_blob("R is a programming language")  
#' }
#' 
#' @export
text_blob <- function(text, ...) {
  assert_that(!missing(text), msg = "Missing `text`")
  textblob$TextBlob(text, ...)
}