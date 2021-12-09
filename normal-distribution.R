# Calculate new average amount
new_mean <- 5000 * 1.2

# Calculate new standard deviation
new_sd <- 2000 * 1.3

# Simulate 36 sales
new_sales <- new_sales %>% 
  mutate(amount = rnorm(36, new_mean, new_sd))

# Create histogram with 10 bins
new_sales %>%
  ggplot(aes(x = amount)) +
  geom_histogram(bins = 10)