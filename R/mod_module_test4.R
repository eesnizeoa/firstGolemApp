#' module_test4 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module_test4_ui <- function(id){
  ns <- NS(id)
  tagList(
    h1("seperate"),
    DT::dataTableOutput(ns("mytable")),
    #
    title = "Examples of DataTables",
    sidebarLayout(
      sidebarPanel(
        conditionalPanel(
          'input.dataset === "mtcars"',
          helpText("Click the column header to sort a column.")
        ),
        conditionalPanel(
          'input.dataset === "iris"',
          helpText("Display 5 records by default.")
        )
      ),
      mainPanel(
        tabsetPanel(
          id = 'dataset',
          tabPanel("mtcars", DT::dataTableOutput(ns("mytable2"))),
          tabPanel("iris", DT::dataTableOutput(ns("mytable3")))
        )
      )
    )
  )
}
    
#' module_test4 Server Function
#'
#' @noRd 
mod_module_test4_server <- function(input, output, session){
  ns <- session$ns
  output$mytable = DT::renderDataTable(
    iris
  )#
  # sorted columns are colored now because CSS are attached to them
  output$mytable2 <- DT::renderDataTable({
    DT::datatable(mtcars, options = list(orderClasses = TRUE))
  })
  
  # customize the length drop-down menu; display 5 rows per page by default
  output$mytable3 <- DT::renderDataTable({
    DT::datatable(iris, options = list(lengthMenu = c(1,10,20,nrow(iris))))
  })
  
}
    
## To be copied in the UI
# mod_module_test4_ui("module_test4_ui_1")
    
## To be copied in the server
# callModule(mod_module_test4_server, "module_test4_ui_1")
 
