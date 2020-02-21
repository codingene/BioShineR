library(shiny)

shinyUI(fluidPage(
  
  titlePanel("BiocManager Test"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("func", "Function:",
                  c("Version" = "version",
                    "Repositories" = "repositories")
    )),
    
    mainPanel(
      textOutput("selected_func")
    )
  )
))