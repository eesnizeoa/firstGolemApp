#' module_test2 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module_test2_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("here is another test !!!!"),
    variableautiliser<-"helllloooooooo",
    varSelectInput("variable","Variable: ", iris),
    plotOutput("data"),
    htmlOutput(ns("text"))
  )
}
    
#' module_test2 Server Function
#'
#' @noRd 
mod_module_test2_server <- function(input, output, session){
  ns <- session$ns
  output$text <- renderUI({
    if(!is.null(input$variable)){
      h2(input$variable)
    }else{
      h2(paste("there you go","hehehhehehehehehehe"))
    }
  })
 
}
    
## To be copied in the UI
# mod_module_test2_ui("module_test2_ui_1")
    
## To be copied in the server
# callModule(mod_module_test2_server, "module_test2_ui_1")
 
