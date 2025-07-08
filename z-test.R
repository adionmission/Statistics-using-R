# z-test

library(BSDA)

# setting the path

print(getwd())
setwd("D:/Projects/Statistics")
print(getwd())


# Sample of IQ levels of 20 individuals from each city

cityA = c(82, 84, 85, 89, 91, 91, 92, 94, 99, 99,
          105, 109, 109, 109, 110, 112, 112, 113, 114, 114)

cityB = c(90, 91, 91, 91, 95, 95, 99, 99, 108, 109,
          109, 114, 115, 116, 117, 117, 128, 129, 130, 133)


# Mean and Standard Deviation of the IQ level

print(mean(cityA))

print(mean(cityB))

print(sd(cityA))

print(sd(cityB))


# to check if the difference in mean is not by chance
# z-test

z.test(x = cityA, y = cityB, sigma.x = sd(cityA), sigma.y = sd(cityB))

# sigma.x and sigma.y = standard deviation of x and y
