library(shiny)

ui <- fluidPage( 
  titlePanel("Demo App Panel"),
  sidebarLayout(
    sidebarPanel(
      textInput("txtInput","Input Text Here to Show")
    ),
    mainPanel(
      paste("You are entering"),
      textOutput("txtOutput")
    )
  )
  
)

server <- function(input, output, session) {
  output$txtOutput<-renderText({
    paste(input$txtInput)
  })
}
shinyApp(ui, server)