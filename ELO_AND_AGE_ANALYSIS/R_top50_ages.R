library(ggplot2)

x <- c(1975:2025)
y <- c(38.3,36.34,35.56,35.8,35.4,35.74,33.72,35.04,34.66,35.18,32.58,33.52,33.7,33.04,33.26,33.3,32.34,30.54,31.84,30.46,31.36,30.68,31.04,31.22,31.1,32.06,32.54,30.78,32.08,30.02,30.86,29.06,27.86,27.98,28,29.1,28.6,29.02,29.2,29.94,30.22,30.24,31.36,30.38,30.98,32.6,32.06,31.28,30.44,29.82,30.24)

data <- data.frame(xValue = x, yValue = y)

ggplot(data, aes(x = xValue, y = yValue)) +
  geom_line() +
  labs(x = "Year", y = "Average age") +
  # Add arrows and labels for 1993
  geom_segment(aes(x = 1993, xend = 1993, y = 31.84, yend = 34),
               arrow = arrow(length = unit(0.2, "cm")), color = "red") +
  annotate("text", x = 1993, y = 34.5, label = "FIDE-PCA Split", color = "red") +
  # Add arrows and labels for 2006
  geom_segment(aes(x = 2006, xend = 2006, y = 29.06, yend = 32.4),
               arrow = arrow(length = unit(0.2, "cm")), color = "blue") +
  annotate("text", x = 2006, y = 32.5, label = "Title Re-unification", color = "blue", vjust = -1)
