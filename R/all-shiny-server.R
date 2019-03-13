
# shiny_user --------------------------------------------------------------

shiny_user <- function(session = list()) {
  sp_env_user <- "SHINYPROXY_USERNAME" # the name of the user, as used when logging in
  sp_env_group <- "SHINYPROXY_USERGROUPS" #the groups the authenticated user is a member of, as a comma-separated value

  if (!is.null(session$user)) {
    # if shiny-server-pro
    user <- session$user
  } else if (Sys.getenv(sp_env_user) != "") {
    # if shiny-proxy
    user <- Sys.getenv(sp_env_user)
  } else {
    user <- NULL
  }
  user
}

