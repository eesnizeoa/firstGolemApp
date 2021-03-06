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
      mod_module_title_ui("module_title_ui_1"),
      mod_module_diplay_irisplot_ui("module_diplay_irisplot_ui_1"),
      mod_module_diplay_iristable_ui("module_diplay_iristable_ui_1"),
      mod_module_test_final_ui("module_test_final_ui_1"),
      
      
      #you could check my failed attempts, I leave them here so I can come back and see if there is something useful
      #mod_name_of_module1_ui("name_of_module1_ui_1"),
      #mod_name_of_module2_ui("name_of_module2_ui_1"),
      #mod_module_test_ui("module_test_ui_1"),
      #mod_module_test2_ui("module_test2_ui_1"),
      #mod_module_test3_ui("module_test3_ui_1"),
      #mod_module_test4_ui("module_test4_ui_1"),
      #actionButton("browser", "browser"),
      #tags$script("$('#browser').hide();")
      #actionButton("alert","browser")
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
  add_resource_path(
    'img', app_sys('app/img')
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

