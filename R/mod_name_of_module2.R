#' name_of_module2 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_name_of_module2_ui <- function(id){
  ns <- NS(id)
  tagList(
    titlePanel("Hello Shiny!"),
    
    # Sidebar layout with input and output definitions ----
    sidebarLayout(
      
      # Sidebar panel for inputs ----
      sidebarPanel(
        
        # Input: Slider for the number of bins ----
        sliderInput(inputId = "bins",
                    label = "Number of bins:",
                    min = 1,
                    max = 50,
                    value = 30)
        
      ),
      
      # Main panel for displaying outputs ----
      mainPanel(
        
        # Output: Histogram ----
        plotOutput(outputId = "distPlot")
        
      )
    )
  )
}
    
#' name_of_module2 Server Function
#'
#' @noRd 
mod_name_of_module2_server <- function(input, output, session){
  ns <- session$ns
  output$distPlot <- renderPlot({
    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = "#75AADB", border = "white",
         xlab = "Waiting time to next eruption (in mins)",
         main = "Histogram of waiting times")
    
  })
 
}
    
## To be copied in the UI
# mod_name_of_module2_ui("name_of_module2_ui_1")
    
## To be copied in the server
# callModule(mod_name_of_module2_server, "name_of_module2_ui_1")
 
