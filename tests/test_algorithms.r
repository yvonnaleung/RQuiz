context("Algorithms")

test_that("bubble.sort is correct", {
  expect_equal(bubble.sort(c(1, 2, 3)), c(1, 2, 3))
  expect_equal(bubble.sort(c(3, 2, 1)), c(1, 2, 3))
  expect_equal(bubble.sort(c(3, 1, 2)), c(1, 2, 3))
  expect_equal(bubble.sort(c(3, 1, 1)), c(1, 1, 3))
  expect_equal(bubble.sort(c(3, 4, 2, 6, 4, 4, 7, 8, 9, 10, 3, 5)), 
               c(2,3,3,4,4,4,5,6,7,8,9,10))
})

test_that("binary.search is correct", {
  expect_true(binary.search(1:5, 2)) 
  expect_true(binary.search(1:5000, 2634)) 
  expect_false(binary.search(1:5000, 12634)) 
  expect_false(binary.search(4000:5000, 12634)) 
  expect_true(binary.search(4000:5000, 4444)) 
  expect_true(binary.search(c(1, 2, 3, 4444, 5000), 4444)) 
  expect_false(binary.search(c(1, 2, 3, 4444, 5000), 4443)) 
  expect_false(binary.search(c(3, 4444, 5000), 4443)) 
  expect_false(binary.search(c(3, 4444, 5000), 1)) 
  expect_true(binary.search(c(3, 4444, 5000), 3)) 
})