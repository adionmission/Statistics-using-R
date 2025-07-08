# Random sampling

library(tidyverse)
library(dplyr)
library(gapminder)


print(getwd())
setwd("D:/Projects/Statistics")
print(getwd())

View(gapminder)


attach(gapminder)

# random sampling -  to chose any of the 10 values from the population allowing duplicates.
sample(lifeExp, size = 10, replace = TRUE)

# random sampling - to chose any of the 10 values from the population not allowing duplicates.
sample(lifeExp, size = 10, replace = FALSE)
