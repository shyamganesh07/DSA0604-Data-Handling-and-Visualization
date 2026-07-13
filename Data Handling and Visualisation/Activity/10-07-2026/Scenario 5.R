# Install ggplot2 if not installed
# install.packages("ggplot2")

library(ggplot2)

# Sample dataset
sales_data <- data.frame(
  Month = rep("January", 9),
  Product_Category = rep(c("Groceries", "Beverages", "Snacks"), each = 3),
  Sales_Amount = c(50000, 45000, 48000,
                   30000, 32000, 31000,
                   20000, 22000, 21000),
  Branch = rep(c("Branch A", "Branch B", "Branch C"), 3)
)

# Grouped Bar Chart
ggplot(sales_data,
       aes(x = Product_Category,
           y = Sales_Amount,
           fill = Branch)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Supermarket Sales Analysis",
    x = "Product Category",
    y = "Sales Amount",
    fill = "Branch"
  ) +
  theme_minimal()