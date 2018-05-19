context("Primes")

test_that("is.prime is true for primes", {
  expect_true(is.prime(2))
  expect_true(is.prime(3))
  expect_true(is.prime(5))
  expect_true(is.prime(7))
  expect_true(is.prime(97))
  expect_true(is.prime(15031))
  expect_true(is.prime(1000000097))
})

test_that("is.prime is false for composites", {
  expect_false(is.prime(4))
  expect_false(is.prime(6))
  expect_false(is.prime(9))
  expect_false(is.prime(21))
  expect_false(is.prime(85))
  expect_false(is.prime(15034))
  expect_false(is.prime(10000000100))
})


test_that("primes.less.than is correct", {
  expect_equal(primes.less.than(10), c(2,3,5,7))
  expect_equal(primes.less.than(20), c(2,3,5,7,11,13,17,19))
  expect_equal(length(primes.less.than(100)), 25)
  expect_equal(sum(primes.less.than(100)), 1060)
})