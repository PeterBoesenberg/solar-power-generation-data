library(data.table)

get_load_module <- function() {
  env <- new.env()
  
  #public functions
  env$load_generation_data <- function() {
    data <- fread("input/Plant_1_Generation_Data.csv")
    return(data)
  }
 
  return(env)
}
