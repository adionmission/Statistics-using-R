# ANOVA

library(tidyverse)
library(dplyr)
library(gapminder)


print(getwd())
setwd("D:/Projects/Statistics")
print(getwd())

View(gapminder)


attach(gapminder)

gapminder %>%
  select(country, lifeExp) %>%
  filter(country == "South Africa" | country == "Ireland") %>%
  group_by(country) %>%
  summarise(Average_life = mean(lifeExp))


df1 = gapminder %>%
  select(country, lifeExp) %>%
  filter(country == "South Africa" | country == "Ireland")

anova_res = aov(data = df1, lifeExp ~ country)

summary(anova_res)
