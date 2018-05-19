context("Strings")

test_that("capitalize.words is correct", {
  expect_equal(capitalize.words(""), "") 
  expect_equal(capitalize.words("hello"), "Hello") 
  expect_equal(capitalize.words("hello world"), "Hello World") 
  expect_equal(capitalize.words("HOW ARE YOU"), "HOW ARE YOU") 
  expect_equal(capitalize.words("hOW aRE yOU"), "HOW ARE YOU") 
})

test_that("reverse.words is correct", {
  expect_equal(reverse.words(""), "") 
  expect_equal(reverse.words("hello"), "hello") 
  expect_equal(reverse.words("hello world"), "world hello") 
  expect_equal(reverse.words("HOW ARE YOU"), "YOU ARE HOW") 
})

test_that("digit.sum is correct", {
  expect_equal(digit.sum(0), 0)
  expect_equal(digit.sum(5), 5)
  expect_equal(digit.sum(50), 5)
  expect_equal(digit.sum(509), 14)
  expect_equal(digit.sum(1509), 15)
})