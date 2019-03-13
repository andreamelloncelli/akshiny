# app_prod ----------------------------------------------------------------

`%||%` <- function (x, y)
{
  if (is.null(x))
    y
  else x
}
#' return `TRUE` if in `production mode`
app_prod <- function(){
  getOption( "app.prod" ) %||% TRUE
}

env_app_prod <- function() {
  if (Sys.getenv("app_prod") == "FALSE") {
    options("app.prod" = FALSE)
  }
}

