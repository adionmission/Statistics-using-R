# t-test

library(tidyverse)
library(dplyr)
library(gapminder)
library(BSDA)


# setting the path

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

t.test(data = df1, lifeExp ~ country)


gapminder %>%
  ggplot(aes(x = log(gdpPercap), y = lifeExp, col = continent, size = pop)) +
  geom_point(alpha=0.3) + 
  geom_smooth(method = lm, se = FALSE) + 
  facet_wrap(~continent)

summary(lm(lifeExp ~ gdpPercap))
