# Install ggplot2 if not installed
# install.packages("ggplot2")

library(ggplot2)

# Sample dataset
hospital_data <- data.frame(
  Department = c("Cardiology", "Neurology", "Orthopedics", "Pediatrics", "Oncology"),
  Number_of_Patients = c(120, 90, 150, 110, 80),
  Average_Treatment_Cost = c(50000, 75000, 45000, 30000, 90000)
)

# Bar Chart
ggplot(hospital_data,
       aes(x = Department,
           y = Number_of_Patients,
           fill = Department)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = Average_Treatment_Cost),
            vjust = -0.5,
            size = 4) +
  labs(
    title = "Hospital Patient Admission Analysis",
    x = "Department",
    y = "Number of Patients",
    fill = "Department"
  ) +
  theme_minimal()