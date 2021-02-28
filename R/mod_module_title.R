#' module_title UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module_title_ui <- function(id){
  ns <- NS(id)
  tagList(
    div(
    h1("SGAFS"),
    h2("Simple Golem App Feature Show")
    )
  )
}
    
#' module_title Server Function
#'
#' @noRd 
mod_module_title_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_module_title_ui("module_title_ui_1")
    
## To be copied in the server
# callModule(mod_module_title_server, "module_title_ui_1")
 
