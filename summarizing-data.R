# Working on understanding variance, standard deviation, quantiles and interquantile range or IQR

# Calculate variance and sd of co2_emission for each food_category
food_consumption %>% 
  group_by(food_category) %>% 
  summarize(var_co2 = var(co2_emission),
     sd_co2 = sd(co2_emission))

# Plot food_consumption with co2_emission on x-axis
ggplot(food_consumption, aes(x = co2_emission)) +
  # Create a histogram
  geom_histogram() +
  # Create a separate sub-graph for each food_category
  facet_wrap(~ food_category)
