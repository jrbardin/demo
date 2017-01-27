library(dplyr)
library(plotly)

cars <- 
  mtcars %>%
  filter(am == 0) %>%
  filter(hp >= 200)

plot_ly(cars, y = ~mpg, x = ~cyl)

cars <-
  cars %>%
  mutate(preferred = mpg >= 18 & cyl > 4)

plot_ly(cars, y = ~mpg, x = ~cyl, type = 'scatter', color = ~preferred, colors = c('red','green'))
