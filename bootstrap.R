# Bootstrapping

library(tidyverse)
library(dplyr)
library(gapminder)
library(boot)


print(getwd())
setwd("D:/Projects/Statistics")
print(getwd())

View(gapminder)


attach(gapminder)

# Creating Function to obtain R-Squared from the data

r_squared = function(formula, data, indices) {
  
  val = data[indices,] # selecting sample with boot
  
  fit = lm(formula, data=val) # fit regression model
  
  return(summary(fit)$r.square) # return R-squared of model
}

# Performing 2000 replications

output = boot(data = gapminder, 
              statistic = r_squared, 
              R = 2000, 
              formula = lifeExp ~ gdpPercap)


# Plotting the output

print(output)
plot(output)

# Obtaining a confidence interval of 95%

boot.ci(output, type="all")
