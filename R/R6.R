#' Textblob
#' 
#' Create a \code{Textblob} object.
#' 
#' @examples
#' \dontrun{
#' Textblob$new("This is a document")
#' }
#' 
#' @export
Textblob <- R6::R6Class(
  "Textblob",
  public = list(
    initialize = function(text, to_r = FALSE){
      assert_that(!missing(text), msg = "Missing text.")
      private$.tb <- map(text, text_blob)
      private$to_r <- to_r
    },
    print = function(){
      cat(crayon::blue(cli::symbol$info), length(private$.tb), "documents.\n")
    },
    tags = function(){
      map_method(private$.tb, "tags", private$to_r)
    },
    words = function(){
      map_method(private$.tb, "words", private$to_r)
    },
    sentences = function(){
      map_method(private$.tb, "sentences", private$to_r)
    },
    sentiment = function(){
      map_method(private$.tb, "sentiment", private$to_r)
    },
    sentiment_polarity = function(){
      map(private$.tb, function(x, to_r){
        results <- x$sentiment$polarity
        if(to_r)
          results <- py_to_r(results)
        return(results)
      }, to_r = private$to_r)
    },
    sentiment_subjectivity = function(){
      map(private$.tb, function(x, to_r){
        results <- x$sentiment$subjectivity
        if(to_r)
          results <- py_to_r(results)
        return(results)
      }, to_r = private$to_r)
    },
    noun_phrases = function(){
      map_method(private$.tb, "noun_phrases", private$to_r)
    },
    translate = function(lang){
      assert_that(!missing(lang))
      map(private$.tb, function(x, l, to_r){
        translation <- x$translate(to = l)
        if(to_r)
          translation <- py_to_r(translation)
        return(translation)
      }, l = lang, to_r = private$to_r)
    }
  ),
  private = list(
    .tb = NULL,
    to_r = FALSE
  )
)