# Correlation and Covariance

library(tidyverse)
library(dplyr)
library(gapminder)
library(reshape)


print(getwd())
setwd("D:/Projects/Statistics")
print(getwd())

View(gapminder)


attach(gapminder)

cor(pop, year, method = "pearson")

cor.test(pop, year, method = "pearson", exact = FALSE)


cor(pop, year, method = "spearman")

cor.test(pop, year, method = "spearman", exact = FALSE)  # exact=false means not to consider same values in the column as it affects the p-score.


cor(pop, year, method = "kendall")

cor.test(pop, year, method = "kendall", exact = FALSE)


# correlation and covariance from col 3 to 6

cor(gapminder[,3:6], method = "pearson")

cov(gapminder[,3:6])

# Rows = from 0 to n numbers
# Columns = from 1 to n numbers


# Correlation Matrix

cormelt = cor(gapminder[,3:6], method = "pearson")

meltcormat = melt(cormelt)

print(meltcormat)

meltcormat %>%
  ggplot(aes(x = X1, y = X2, fill = value)) + geom_tile()
