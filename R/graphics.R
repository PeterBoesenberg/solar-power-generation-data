library(plotly)

get_graphics_module <- function() {

  
  env <- new.env()
  
  # public functions
  
  env$load <- function() {
   
  }
  
  return(env)
}
