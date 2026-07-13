library(ggplot2)

brands <- c("Apple", "Samsung", "Google", "OnePlus", "Xiaomi")
set.seed(42)
n <- 100

dataset <- data.frame(
  Brand = sample(brands, n, replace = TRUE),
  RAM = sample(c(4, 6, 8, 12, 16), n, replace = TRUE),
  Processor_Speed = runif(n, 1.8, 3.5),
  Storage = sample(c(64, 128, 256, 512, 1024), n, replace = TRUE)
)
dataset$Price <- dataset$RAM * 50 + dataset$Processor_Speed * 150 + dataset$Storage * 0.5 + rnorm(n, 0, 50)

ggplot(dataset, aes(x = RAM, y = Price, shape = Brand, size = Storage, color = Processor_Speed)) +
  geom_point(alpha = 0.8) +
  scale_size_continuous(range = c(2, 7)) +
  scale_color_viridis_c() +
  labs(
    x = "RAM (GB)",
    y = "Price ($)",
    shape = "Brand",
    size = "Storage (GB)",
    color = "Processor Speed (GHz)",
    title = "Smartphone Market Comparison"
  ) +
  theme_minimal()