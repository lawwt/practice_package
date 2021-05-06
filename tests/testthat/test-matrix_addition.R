# test matrix_addition

test_that("matrix_addition returns an error if its not a matrix", {
  x <- matrix(1,2,2)
  y <- "hello"

  expect_equal(matrix_addition(x), 4)
  expect_error(matrix_addition(y), "not a")
})

