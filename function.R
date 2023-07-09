
Resultsdf <- function(input){
  eventReactive(input$user_btn, {
    withProgress(message = 'Loading...',
  future({#myResultsFunction()
    return(iris)
    })) %...>% { Resultsdf <<- . }
})}

#myResultsFunction <- function(){
#  Sys.sleep(1)
#  return(iris)
#}