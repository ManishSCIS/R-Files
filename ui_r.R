##ui.R##
library(shinydashboard)
library(shiny)

ui <- dashboardPage( 
  dashboardHeader(title="COVID-19 India Data"),
  
  
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("fa-solid fa-virus-covid")),
      menuItem("Forecast", tabName = "forecast", icon = icon("fa-solid fa-chart-line")),
      menuItem("Spatial Statistics", tabName = "spatial", icon = icon("fa-solid fa-earth-asia")),
      menuItem("Github Repository", tabName = "repository", icon = icon("fa-solid fa-github"))
      
      
    )
  ),
  
  
  
  
  
  dashboardBody(),
  skin ="green" 
)
server <- function(input,output){ }
shinyApp(ui, server)


