#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Program:  Best Cars
# Version:  0.99
# Authors:  Jess Bardin (jess.bardin@elicitinsights.com),
#           Hawk (hawk@elicitinsights.com)
# Updated:  Jan 2017
# 
# Description: 
#   This script helps narrow down best car options from the mtcars data set
#   included in the 'datasets' package
#
#
# Legal Notice:
#   All rights in this program are owned by Elicit, LLC.  
#   All use and distribution of this program is subject to a separate 
#   written agreement between you or your organization and Elicit, LLC.  
#   © 2016 Elicit, LLC. 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
