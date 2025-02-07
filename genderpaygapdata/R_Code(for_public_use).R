library(readxl)
library(ggplot2)

# Load data, put your file path here
# file_path <- ""
gender_paygap_data <- read_excel(file_path, sheet = "Sheet1", col_names = TRUE)

# Plot
ggplot(
  gender_paygap_data,
  aes(
    x = as.factor(Year),
    y = `Mean Hourly Gap`,
    group = Industry,
    color = Industry
  )
) +
  geom_line(linewidth = 1) +
  geom_point(size = 2) +
  labs(
    title = "Mean Hourly Gender Pay Gap by Industry (2022-2024)",
    x = "Year",
    y = "Mean Hourly Gap (%)",
    color = "Industry"
  ) +
  theme_minimal() +
  theme(
    legend.position = "right",
    legend.text = element_text(size = 8),  # Smaller legend text
    plot.title = element_text(hjust = 0.5, face = "bold")
  ) +
  guides(color = guide_legend(ncol = 2))  # 2-column legend