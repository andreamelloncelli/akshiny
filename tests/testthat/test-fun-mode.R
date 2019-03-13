context("fun-mode")

test_that("env_app_prod works if not set", {
  Sys.setenv("app_prod" = "")

  env_app_prod()

  expect_equal(app_prod(), TRUE)
})


test_that("env_app_prod make app_prod() false if set", {
  Sys.setenv("app_prod" = "FALSE")

  env_app_prod()

  expect_equal(app_prod(), FALSE)

  Sys.setenv("app_prod" = "")
})
