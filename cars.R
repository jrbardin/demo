library(dplyr)

cars <- 
  mtcars %>%
  filter(am == 0) %>%
  filter(hp >= 200)
