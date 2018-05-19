context("Vectors")

test_that("middle.element works on non-empty vectors", {
  expect_equal(middle.element(1:5), 3)
  expect_equal(middle.element(2:5), 3)
  expect_equal(middle.element(c(1,1,1,2,1,1,1,1)), 2)
  expect_equal(middle.element(c(1,1,1,1,2,1,1,1,1)), 2)
})

test_that("evens works on non-empty vectors", {
  expect_equal(evens(1:5), c(2, 4))
  expect_equal(evens(c(1,3,5)), numeric(0))
  expect_equal(evens(1:100), seq(2, 100, 2))
  expect_equal(evens(2002), 2002)
  expect_equal(evens(2001), numeric(0))
})

test_that("hypotenuse is correct", {
  expect_equal(hypotenuse(3, 4), 5)
  expect_equal(hypotenuse(5, 12), 13)
  expect_equal(hypotenuse(c(3, 12, 7), c(4, 5, 24)), c(5, 13, 25))
})

test_that("reverse.evens works on non-empty vectors", {
  expect_equal(reverse.evens(1:5), c(1, 4, 3, 2, 5))
  expect_equal(reverse.evens(1:10), c(1, 10, 3, 8, 5, 6, 7, 4, 9, 2))
  expect_equal(reverse.evens(c(1,3,4)), c(1, 3, 4))
  expect_equal(reverse.evens(c(10,8,6,4,2)), c(2,4,6,8,10))
  expect_equal(reverse.evens(c(10,4,6,8,2)), c(2,8,6,4,10))
})
