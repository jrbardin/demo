library(dplyr)
library(plotly)

cars <- 
  mtcars %>%
  filter(am == 0) %>%
  filter(hp >= 200)

plot_ly(cars, y = ~mpg, x = ~cyl)