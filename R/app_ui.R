#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    fluidPage(
      h1("firstGolemApp"),
      mod_name_of_module1_ui("name_of_module1_ui_1"),
      mod_name_of_module2_ui("name_of_module2_ui_1"),
      #actionButton("browser", "browser"),
      #tags$script("$('#browser').hide();")
      actionButton("alert","browser")
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'firstGolemApp'
    )
    # Add here other external resources
    # tags$script(src="www/handlers.js")
    # tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
    # for example, you can add shinyalert::useShinyalert() 
  )
}

