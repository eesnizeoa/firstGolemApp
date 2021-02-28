#' module_test UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module_test_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("This is a test"),
    selectInput("select", "Select columns to display", names(iris), multiple = TRUE),
    dataTableOutput('mytable')
    #plotOutput(ns("plot"))
  )
}
    
#' module_test Server Function
#'
#' @noRd 
mod_module_test_server <- function(input, output, session){
  ns <- session$ns
  output$mytable = renderDataTable({
  #output$plot <- renderPlot({
    "columns = names(iris)
    if(!is.null(input$select)) {
      columns = input$select
    }
    iris[,columns,drop=FALSE]"
    iris
    
    #x<-random_num()
    #plot(iris[,x],ylab = colnames(iris[x]))
    #plot(iris)
  })
 
}
    
## To be copied in the UI
# mod_module_test_ui("module_test_ui_1")
    
## To be copied in the server
# callModule(mod_module_test_server, "module_test_ui_1")
 
