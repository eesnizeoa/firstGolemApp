#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  callModule(mod_name_of_module1_server, "name_of_module1_ui_1")
  callModule(mod_name_of_module2_server, "name_of_module2_ui_1")
  callModule(mod_module_test_server, "module_test_ui_1")
  callModule(mod_module_test2_server, "module_test2_ui_1")
  callModule(mod_module_test3_server, "module_test3_ui_1")
  callModule(mod_module_test4_server, "module_test4_ui_1")
  #observeEvent(input$browser,{
  #  browser()
  #})
  observeEvent(input$alert,{
    golem::invoke_js("alert","Yeay!")
  })
  
}
