library(data.table)

source("R/load.R")
source("R/clean.R")
source("R/analysis.R")
source("R/graphics.R")

# load all data
load <- get_load_module()
data <- load$load()

# clean the data
clean <- get_clean_module()
cleaned_data <- clean$clean(data)

# analyse
analyze <- get_analysis_module()

graphics <- get_graphics_module()