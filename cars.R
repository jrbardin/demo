library(dplyr)

cars <- 
  mtcars %>%
  filter(am == 0)