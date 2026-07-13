# Install ggplot2 if not installed
# install.packages("ggplot2")

library(ggplot2)

# Sample dataset
weather_data <- data.frame(
  Date = rep(as.Date(c("2025-07-01","2025-07-02","2025-07-03","2025-07-04","2025-07-05")), 3),
  Temperature = c(
    35, 36, 37, 36, 35,   # Chennai
    28, 29, 30, 31, 30,   # Bengaluru
    32, 33, 34, 33, 32    # Hyderabad
  ),
  City = rep(c("Chennai", "Bengaluru", "Hyderabad"), each = 5)
)

# Line Chart
ggplot(weather_data,
       aes(x = Date,
           y = Temperature,
           color = City,
           linetype = City,
           group = City)) +
  geom_line(size = 1.2) +
  labs(
    title = "Weather Monitoring System",
    x = "Date",
    y = "Temperature (°C)",
    color = "City",
    linetype = "City"
  ) +
  theme_minimal()