library(shiny)
library(BiocManager)

shinyServer(function(input, output) {
  
  output$selected_func <- renderText({
    if (input$func == "version"){
      paste( "BiocManager Version:", as.character(BiocManager::version()))
    } else if (input$func == "repositories"){
      paste("Current Bioconductor and CRAN repositories")
      BiocManager::repositories()
    } else {
      print("Not functions selected")
    }
    })
  
})