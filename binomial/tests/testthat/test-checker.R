context("Test checker functions")

#source("../../R/binomial.R")

test_that("test that check_prob works",{
  expect_true(check_prob(0.5))
  expect_length(check_prob(0.5),1)
  expect_error(check_prob(1.5), 'invalid prob value')
})

test_that("test that check_trials works",{
  expect_true(check_trials(5))
  expect_length(check_trials(5),1)
  expect_error(check_trials(1.5), 'invalid trials value')
})

test_that("test that check_success works",{
  expect_true(check_success(2,5))
  expect_error(check_success(10,5),'success cannot be greater than trials')
  expect_error(check_success(1.1,2), 'invalid success value')
})


