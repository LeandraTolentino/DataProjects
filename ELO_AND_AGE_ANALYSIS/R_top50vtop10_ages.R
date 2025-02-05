library(ggplot2)

# Data for top 50 
x <- c(1975:2025)
y <- c(38.3,36.34,35.56,35.8,35.4,35.74,33.72,35.04,34.66,35.18,32.58,33.52,33.7,33.04,33.26,33.3,32.34,30.54,31.84,30.46,31.36,30.68,31.04,31.22,31.1,32.06,32.54,30.78,32.08,30.02,30.86,29.06,27.86,27.98,28,29.1,28.6,29.02,29.2,29.94,30.22,30.24,31.36,30.38,30.98,32.6,32.06,31.28,30.44,29.82,30.24)
data_top50 <- data.frame(xValue = x, yValue = y)

# Data for top 10 
top10_ages <- c(35.90, 36.90, 37.33, 39.78, 40.00, 40.00, 34.89, 35.78, 36.78, 38.67, 38.00, 36.44, 36.89, 35.67, 30.78, 34.11, 28.78, 25.22, 25.44, 23.89, 26.44, 26.44, 27.33, 28.78, 27.56, 26.44, 27.22, 26.56, 27.22, 27.22, 28.78, 29.89, 31.00, 31.00, 29.44, 32.67, 30.56, 32.11, 29.56, 32.89, 30.67, 30.89, 30.22, 31.22, 33.33, 30.00, 31.78, 30.56, 32.00, 31.44, 29.22)
x_top10 <- 1975:2025
data_top10 <- data.frame(xValue = x_top10, yValue = top10_ages)

# Plot the data for top 50 and top 10
ggplot() +
  geom_line(data = data_top50, aes(x = xValue, y = yValue, color = "Top 50"), size = 1) +
  geom_line(data = data_top10, aes(x = xValue, y = yValue, color = "Top 10"), size = 1) +
  labs(x = "Year", y = "Average Age") +
  scale_color_manual(values = c("Top 50" = "blue", "Top 10" = "red")) +
  theme_minimal() +
  ggtitle("Average Age of Top 50 and Top 10 FIDE Rated Players") +
  theme(legend.title = element_blank()) 