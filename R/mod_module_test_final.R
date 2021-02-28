#' module_test_final UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module_test_final_ui <- function(id){
  ns <- NS(id)
  tagList(
    h3('A selection of columns ...'),
    selectInput(ns("select"), "Select columns to display", names(iris), multiple = TRUE),
    dataTableOutput(ns('mytable')),
    h3("... and a selection of columns for a plot display"),
    selectInput(ns("select2"), "Select columns to display", names(iris), multiple = TRUE),
    plotOutput(ns('myplot'))
  )
}
    
#' module_test_final Server Function
#'
#' @noRd 
mod_module_test_final_server <- function(input, output, session){
  ns <- session$ns
  output$mytable = renderDataTable({
    columns = names(iris)
    if (!is.null(input$select)) {
      columns = input$select
    }
    iris[,columns]
  })
  output$myplot = renderPlot({
    columns2=names(iris)
    if(!is.null(input$select2)) {
      columns2 = input$select2
    }
    plot(iris[,columns2])
  })
}
    
## To be copied in the UI
# mod_module_test_final_ui("module_test_final_ui_1")
    
## To be copied in the server
# callModule(mod_module_test_final_server, "module_test_final_ui_1")
 
