library(testthat)

source("recursive.r")
source("primes.r")
source("vectors.r")
source("strings.r")
source("algorithms.r")

test_results <- test_dir("tests", reporter="summary")
print(test_results)