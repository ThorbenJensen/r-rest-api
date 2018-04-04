
print("Starting hello world...")

#' @get /factorial
#' @json
function(x) {
  x <- as.numeric(x)
  return(list(input = x, factorial = factorial(x)))
}
