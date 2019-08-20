map_method <- function(x, method, to_r){
  map(x, function(x, method, to_r){
    results <- x[[method]]
    if(to_r)
      results <- py_to_r(results)
    return(results)
  }, method = method, to_r = to_r)
}