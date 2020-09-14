library(plotly)

get_analysis_module <- function() {
  env <- new.env()
  
  # public functions
  
  # analyze all data
  env$analyze <- function() {
    
  }
  
  return(env)
}
