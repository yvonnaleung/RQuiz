context("Recursive")

test_that("fib is correct", {
  expect_equal(fib(1), 1)
  expect_equal(fib(2), 1)
  expect_equal(fib(3), 2)
  expect_equal(fib(4), 3)
  expect_equal(fib(5), 5)
  expect_equal(fib(10), 55)
})

test_that("fac is correct", {
  expect_equal(fac(1), 1)
  expect_equal(fac(2), 2)
  expect_equal(fac(3), 6)
  expect_equal(fac(4), 24)
  expect_equal(fac(5), 120)
})