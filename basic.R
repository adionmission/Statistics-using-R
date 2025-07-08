# simple mean, median, standard deviation, data transformation and graphs.

library(tidyverse)
library(dplyr)
library(gapminder)

View(gapminder)


mean(gapminder$gdpPercap)


attach(gapminder)

mean(pop)

median(pop)

sd(pop)

gapminder %>%
  ggplot(aes(lifeExp)) + geom_histogram(col="red")


gapminder %>%
  ggplot(aes(log(pop))) + geom_histogram(col="red")


gapminder %>%
  ggplot(aes(x = continent, y = lifeExp)) + geom_boxplot()


gapminder %>%
  ggplot(aes(x = log(gdpPercap), y = lifeExp)) + geom_point()
