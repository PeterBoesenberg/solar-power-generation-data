library(data.table)
library(lubridate)

get_clean_module <- function() {
  clean_generation_data <- function(data) {
    data[, DATE_TIME := as_datetime(DATE_TIME)]
    data[, PLANT_ID := as.factor(PLANT_ID)]
  }
  
  clean_weather_data <- function(data) {
    data[, DATE_TIME := as_datetime(DATE_TIME)]
    data[, PLANT_ID := as.factor(PLANT_ID)]
  }
  
  env <- new.env()
  
  # public functions
  
  # clean all data
  env$clean <- function(data) {
    data$p1_gen <- clean_generation_data(data$p1_gen)
    data$p1_weather <- clean_weather_data(data$p1_weather)
    data$p2_gen <- clean_generation_data(data$p2_gen)
    data$p2_weather <- clean_weather_data(data$p2_weather)
    return(data)
  }
  
  return(env)
}
