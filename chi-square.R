# Chi-square test

library(gapminder)


print(getwd())
setwd("D:/Projects/Statistics")
print(getwd())

View(gapminder)


attach(gapminder)

model = chisq.test(lifeExp)

print(model)


print(head(model$observed))

print(head(model$expected))
