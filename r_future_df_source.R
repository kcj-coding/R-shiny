library(shiny)
library(promises)
library(future)
library(datasets)
plan(multisession)

source("function.R")

ui <- fluidPage(
  #navbarPage(title ="App"),
  titlePanel("Test app"),
  sidebarLayout(
  sidebarPanel(actionButton("user_btn", "user_btn")),
  mainPanel(tableOutput("table")))
  
)

server <- function(input, output, session) {
  
  #Resultsdf <- reactiveVal()
  
  #observeEvent(input$user_btn, {
  #  future({myResultsFunction()}) %...>% Resultsdf()
  #})
  
  results <- Resultsdf(input)
  output$table <- renderTable(results())
  
  #observeEvent(Resultsdf(), {
  #  #dat <- Resultsdf
  #  output$table <- renderTable(Resultsdf)
  #  #print(Resultsdf()$Sepal.Length)
  #  #print(Resultsdf()$Species)
  #})
  
}

shinyApp(ui, server)