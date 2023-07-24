library(tidyverse)

# Read in the original data on animal responses
animal_response <- read_csv("raw_data/Urban_Park_Ranger_Animal_Condition_Response.csv")

# Write out a CSV for each borough
animal_response %>% 
  group_by(Borough) %>% 
  group_walk(~ write_csv(.x, paste0("data/", .y$Borough, "_animal_response.csv")))
