library(data.table)

get_load_module <- function() {
  load_p1_generation_data <- function() {
    data <- fread("input/Plant_1_Generation_Data.csv")
    return(data)
  }
  load_p1_weather_sensor_data <- function() {
    data <- fread("input/Plant_1_Weather_Sensor_Data.csv")
    return(data)
  }
  load_p2_generation_data <- function() {
    data <- fread("input/Plant_2_Generation_Data.csv")
    return(data)
  }
  load_p2_weather_sensor_data <- function() {
    data <- fread("input/Plant_2_Weather_Sensor_Data.csv")
    return(data)
  }
  
  env <- new.env()
  
  # public functions
  
  # load all data in a list with named attributes
  # @return list wiith p1_gen, p1_weather, p2_gen, p2_weather
  env$load <- function() {
    data <- list()
    data$p1_gen <- load_p1_generation_data()
    data$p1_weather <- load_p1_weather_sensor_data()
    data$p2_gen <- load_p2_generation_data()
    data$p2_weather <- load_p2_weather_sensor_data()
    return(data)
  }
 
  return(env)
}
