#' Install Dependencies
#' 
#' Install the \href{https://textblob.readthedocs.io/en/dev/quickstart.html}{TextBlob}. 
#' Arguments are passed to \link[reticulate]{py_install}.
#' 
#' @param envname Name of environment to install packages into
#' @param method Installation method. By default, "auto" automatically 
#' finds a method that will work in the local environment. 
#' Change the default to force a specific installation method. 
#' Note that the "virtualenv" method is not available on Windows.
#' @param conda Path to conda executable (or "auto" to find conda using the
#' \code{PATH} and other conventional install locations).
#' 
#' @section Corpora:
#' \itemize{
#'   \item{\code{download_corpora} - Downloads the necessary NLTK corpora for TextBlob.}
#'   \item{\code{download_corpora_lite} - If you only intend to use TextBlob's default models, you can use the "lite" option.}
#' }
#' 
#' @examples
#' \dontrun{install_textblob()}
#' 
#' @import assertthat
#' 
#' @name dependencies
#' @export
install_textblob <- function(envname = NULL, method = "auto", conda = "auto") {
  reticulate::py_install("textblob", envname = envname, method = method, conda = conda)
}

#' @rdname dependencies
#' @export
download_corpora <- function(){
  textblob$download_corpora$download_all()
  invisible()
}

#' @rdname dependencies
#' @export
download_corpora_lite <- function(){
  textblob$download_corpora$download_lite()
  invisible()
}