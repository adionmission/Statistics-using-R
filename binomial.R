# Binomial Distribution

library(tidyverse)


# setting the path

print(getwd())
setwd("D:/Projects/Statistics")
print(getwd())


# Creating dataset of COVID19 positive and negative patients.

data = data.frame(Patients = c(1:30))

View(data)


# Using random sampling to choose any 5 without duplicates

success = sample(data$Patients, size = 5, replace = FALSE)

print(success)


# using dbinom() to find values for probability density function of x.

dbin = dbinom(x = success, size = 30, prob = 5/30)

# x = total number of COVID19 negative patients or total number of success.
# Size = total number of trails.
# prob = shows probability of success

print(dbin)

print(sum(dbin))


# graph of probability vs success

data_new = data.frame(success = c(success),
                      binomial = c(dbin))

View(data_new)

data_new %>%
  ggplot(aes(success, dbin)) + 
  geom_point() + 
  geom_line() + 
  labs(x = "Success",
       y = "Probability",
       title = "Success vs Probability") + 
  theme_bw() + 
  theme(plot.title = element_text(size = 25),
        axis.title.x = element_text(size = 15),
        axis.title.y = element_text(size = 15))
