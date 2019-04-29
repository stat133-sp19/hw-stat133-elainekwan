context("Test binomial functions")

source("../../R/binomial.R")

test_that("test that bin_choose works",{
  expect_length(bin_choose(5, 1:3),3)
  expect_equal(bin_choose(5,2),10)
  expect_error(bin_choose(5,10),'k cannot be greater than n')
})

test_that("test that bin_probability works",{
  expect_equal(bin_probability(2,5,0.5),0.3125)
  expect_length(bin_probability(0:2,5,0.5),3)
  expect_error(bin_probability(10,5,0.5), 'success cannot be greater than trials')
})

test_that("test that bin_distribution works",{
  expect_is(bin_distribution(5,0.5),'bindis')
  expect_length(bin_distribution(5,0.5),2)
  expect_equal(ncol((bin_distribution(5,0.5))),2)
})

test_that("test that bin_cumulative works",{
  expect_is(bin_cumulative(5,0.5),'bincum')
  expect_length(bin_cumulative(5,0.5),3)
  expect_equal(ncol((bin_cumulative(5,0.5))),3)
})


