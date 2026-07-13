# Install ggplot2 if not installed
# install.packages("ggplot2")

library(ggplot2)

# Sample dataset
ev_data <- data.frame(
  Vehicle_Model = c("Model A", "Model B", "Model C", "Model D",
                    "Model E", "Model F", "Model G", "Model H"),
  Battery_Capacity = c(35, 45, 50, 60, 70, 80, 90, 100),
  Price = c(12, 16, 18, 24, 28, 35, 42, 50),   # Price in Lakhs
  Driving_Range = c(220, 280, 300, 380, 420, 500, 550, 620),
  Manufacturer = c("Tata", "MG", "Hyundai", "Mahindra",
                   "Tata", "BYD", "Hyundai", "BYD")
)

# Bubble Chart
ggplot(ev_data,
       aes(x = Battery_Capacity,
           y = Price,
           size = Driving_Range,
           color = Manufacturer)) +
  geom_point(alpha = 0.7) +
  labs(
    title = "Electric Vehicle Market Analysis",
    x = "Battery Capacity (kWh)",
    y = "Price (Lakhs)",
    size = "Driving Range (km)",
    color = "Manufacturer"
  ) +
  theme_minimal()