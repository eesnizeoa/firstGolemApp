#' module_diplay_iristable UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module_diplay_iristable_ui <- function(id){
  ns <- NS(id)
  tagList(
    h3("This is a table display of the same dataset"),
    tabPanel("iris", DT::dataTableOutput(ns("mytable3")))
  )
}
    
#' module_diplay_iristable Server Function
#'
#' @noRd 
mod_module_diplay_iristable_server <- function(input, output, session){
  ns <- session$ns
  output$mytable3 <- DT::renderDataTable({
    DT::datatable(iris, options = 
                    list(
                      lengthMenu = c(1,10,20,nrow(iris))
                      ),
                  )
  })
}
    
## To be copied in the UI
# mod_module_diplay_iristable_ui("module_diplay_iristable_ui_1")
    
## To be copied in the server
# callModule(mod_module_diplay_iristable_server, "module_diplay_iristable_ui_1")
 
