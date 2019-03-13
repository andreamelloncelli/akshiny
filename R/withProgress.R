#' Title
#'
#' @param label
#' @param proc
#' @param ...
#'
#' @return
#' @import shiny
#' @export
#'
#' @examples
withProgress_2_steps <- function(label, proc, ...) {
  withProgress(message = label, value = 0, {
    incProgress(1/2, detail = paste0("Doing ", label, "..."))
    eval(proc)
    incProgress(1/2, detail = paste("Done"))
  })
  NULL
}
