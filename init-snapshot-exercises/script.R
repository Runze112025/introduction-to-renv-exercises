library(ggplot2)
library(dplyr)

# Read the iris dataset
data(iris)

# Print the first 6 rows
head(iris)

# Create a scatter plot of Sepal.Length and Sepal.Width
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point()

# Perform some data analysis using dplyr
iris %>%
  group_by(Species) %>%
  summarise(mean_sepal_length = mean(Sepal.Length))

# Create a linear mixed effects model with {lme4}
lme4::lmer(Sepal.Length ~ Sepal.Width + (1 | Species), data = iris)
