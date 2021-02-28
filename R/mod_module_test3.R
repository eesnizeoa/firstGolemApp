#' module_test3 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module_test3_ui <- function(id, type = c("point","hist","boxplot","bar")){
  ns <- NS(id)
  tagList(
    h1("ayayyayayayay"),
    sliderInput(ns("choice"), "Choice", 1, 10, 5),
    actionButton(ns("validate"), "Validate Choice"),
    
    hr(),
    
    #checkboxInput(ns("choicee"),"iris dataset",value=FALSE),
    
    checkboxGroupInput("choicee", 
                       "Variables to show:",
                       c("longeur des sépales" = "Sepal.Length","largeur des sépales" = "Sepal.Width")),
    tableOutput("datairistest")
    
  )
}
    
#' module_test3 Server Function
#'
#' @noRd 
mod_module_test3_server <- function(input, output, session, type){
  ns <- session$ns
  observeEvent( input$validate , {
    print(input$choice)
  })
  #observeEvent( input$choicee, {
  #  if(input$choicee == TRUE){
  #   print(iris[1:10,])
  # }
  #})
  observeEvent( input$datairistest, {
    if(input$choicee.value == TRUE){
      print(iris[1:10,c(input$choicee.value)])
    }
  })
  
}
    
## To be copied in the UI
# mod_module_test3_ui("module_test3_ui_1")
    
## To be copied in the server
# callModule(mod_module_test3_server, "module_test3_ui_1")
 
