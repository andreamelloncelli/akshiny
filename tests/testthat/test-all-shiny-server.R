context("test-all-shiny-server")


# shiny_user --------------------------------------------------------------

test_that("shiny_user works with shiny server pro", {
  session <- list(user = "johndoe")

  user <- shiny_user(session)

  expect_equal(user, "johndoe")
})

test_that("shiny_user works with shiny proxy", {
  session <- list()
  Sys.setenv("SHINYPROXY_USERNAME" = "johndoe")

  user <- shiny_user(session)

  expect_equal(user, "johndoe")

  Sys.setenv("SHINYPROXY_USERNAME" = "")
})

test_that("shiny_user returns null with shiny server free", {
  session <- list()

  user <- shiny_user(session)

  expect_null(user)
})

