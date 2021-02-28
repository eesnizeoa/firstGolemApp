#' module_diplay_irisplot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module_diplay_irisplot_ui <- function(id){
  ns <- NS(id)
  tagList(
    h3("Here is a simple plot of the iris dataset. 
      It is a dataset known by a lot of people working with datas. 
      If you use R or Python, I am sure you are familiar with this dataset. 
      Just in case, this display might help you remember: "),
    plotOutput(ns("plot"))
  )
}
    
#' module_diplay_irisplot Server Function
#'
#' @noRd 
mod_module_diplay_irisplot_server <- function(input, output, session){
  ns <- session$ns
  output$plot <- renderPlot ({
    plot(iris)
  })
}
    
## To be copied in the UI
# mod_module_diplay_irisplot_ui("module_diplay_irisplot_ui_1")
    
## To be copied in the server
# callModule(mod_module_diplay_irisplot_server, "module_diplay_irisplot_ui_1")
 
