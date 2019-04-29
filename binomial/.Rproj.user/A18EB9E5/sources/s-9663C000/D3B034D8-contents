context("Test aux functions")

source("../../R/binomial.R")

test_that("test that aux_mean works",{
  expect_equal(aux_mean(10,0.3),3)
  expect_length(aux_mean(10,0.3),1)
  expect_is(aux_mean(10,0.3),'numeric')

})

test_that("test that aux_variance works",{
  expect_equal(aux_variance(10,0.3),2.1)
  expect_length(aux_variance(10,0.3),1)
  expect_is(aux_variance(10,0.3),'numeric')
})

test_that("test that aux_mode works",{
  expect_equal(aux_mode(10,0.3),3)
  expect_length(aux_mode(10,0.3),1)
  expect_is(aux_mode(10,0.3),'numeric')
})

test_that("test that aux_skewness works",{
  expect_equal(signif(aux_skewness(10,0.3),3),signif(0.2760262,3))
  expect_length(aux_skewness(10,0.3),1)
  expect_is(aux_skewness(10,0.3),'numeric')

})

test_that("test that aux_kurtosis works",{
  expect_equal(signif(aux_kurtosis(10,0.3),3),signif(-0.1238095,3))
  expect_length(aux_kurtosis(10,0.3),1)
  expect_is(aux_kurtosis(10,0.3),'numeric')
})

