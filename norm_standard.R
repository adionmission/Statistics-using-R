# Normalization and Standardization

library(tidyverse)
library(dplyr)
library(gapminder)


print(getwd())
setwd("D:/Projects/Statistics")
print(getwd())

View(gapminder)


normalize = function(x){
  
  return ((x - min(x))/max(x) - min(x))
}


attach(gapminder)

normalize(pop)


gapminder = mutate(gapminder, norm_pop = normalize(pop))

View(gapminder)


gapminder = mutate(gapminder, standard_pop = scale(pop))

View(gapminder)
