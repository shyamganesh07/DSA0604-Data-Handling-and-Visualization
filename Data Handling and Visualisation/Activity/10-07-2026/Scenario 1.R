# Install ggplot2 if not already installed
# install.packages("ggplot2")

library(ggplot2)

student_data <- data.frame(
  Student_ID = c(101,102,103,104,105,106,107,108),
  Attendance = c(90,75,85,60,95,80,70,88),
  Internal_Marks = c(88,70,82,60,95,78,68,90),
  Department = c("CSE","AI","IT","ECE","CSE","AI","IT","ECE")
)

# Scatter Plot
ggplot(student_data,
       aes(x = Attendance,
           y = Internal_Marks,
           color = Department)) +
  geom_point(size = 4) +
  labs(
    title = "Student Academic Performance Dashboard",
    x = "Attendance (%)",
    y = "Internal Marks",
    color = "Department"
  ) +
  theme_minimal()