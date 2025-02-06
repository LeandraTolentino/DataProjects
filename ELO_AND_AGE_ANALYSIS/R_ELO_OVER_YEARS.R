library(ggplot2)

# Data for average ELO (Top 50)
x <- 1975:2025
elo <- c(2580.20, 2573.20, 2576.70, 2578.10, 2578.80, 2580.60, 2578.00, 2580.50, 2576.00, 2577.70, 2577.10, 2581.50, 2585.70, 2597.40, 2603.80, 2608.80, 2620.00, 2625.70, 2638.60, 2638.70, 2648.10, 2654.40, 2657.30, 2663.90, 2669.42, 2673.68, 2681.28, 2681.84, 2683.72, 2687.30, 2689.00, 2694.64, 2696.94, 2708.36, 2717.20, 2720.46, 2726.76, 2730.58, 2733.96, 2735.56, 2736.72, 2736.48, 2738.22, 2738.04, 2735.16, 2732.64, 2731.98, 2728.70, 2727.70, 2725.50, 2722.46)

data <- data.frame(xValue = x, Elo = elo)

# Plotting the average ELO for Top 50
ggplot(data, aes(x = xValue, y = Elo)) +
  geom_line(color = "blue", size = 1) +
  labs(x = "Year", y = "Average ELO") +
  ggtitle("Average ELO for Top 50 FIDE Rated Players") +
  theme_minimal() 