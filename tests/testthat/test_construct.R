# Testing the construct() function ==============

bar = list(A = c(1, 2, 3, 4, 5), B = c(3, 4, 5, 6, 7), C = c(5, 6, 7, 8, 9))
foo = list(c(1, 2, 3, 4, 5), c(3, 4, 5, 6, 7), c(5, 6, 7, 8, 9))
baz = list(c(1, 2, 3, 4, 5), c(3, 4, 5, 6, 7), letters[1:5])
qux = list(c(TRUE, FALSE, TRUE), c(FALSE, TRUE, FALSE))

test_that("construct: checking types", {
  expect_equal(class(construct(foo)@sets), "list")
  expect_equal(class(construct(foo)@names), "character")
  expect_equal(class(construct(bar)@names), "character")
}
)

test_that("construct: errors", {
  expect_error(construct(baz[[1]]))
  expect_error(construct(baz))
  expect_error(construct(qux))
}
)
