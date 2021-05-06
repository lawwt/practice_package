#' @title Sum a matrix
#'
#' @param numeric.matrix Matrix to be summed
#'
#' @return Integer
#' @export

matrix_addition <- function(numeric.matrix){
  # check if matrix and numeric
  if(is.matrix(numeric.matrix)  != T){stop("not a matrix")}
  if(is.numeric(numeric.matrix) != T){stop("not numeric")}
  # sum and return
  return(sum(numeric.matrix))
}
