
DJ_df <- read.csv("DJIA8012.csv", header = TRUE)

names(DJ_df) <- c("Date", "Stock_Average")
DJ_df$Date <- as.Date(DJ_df$Date)

library(tidyverse)
library(ggplot2)

plot1 <- ggplot(
  data = DJ_df,
  mapping = aes(x = Date , y = Stock_Average)
) +
  geom_point() + # Line plot
  scale_x_date(date_breaks = "1 day", date_labels = "%Y-%m-%d") + # Format x-axis dates
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + # Rotate x-axis labels for better readability
  scale_x_date(limits = as.Date(c("1980-01-01", "2012-12-32"))) 

plot1

DJ_df2 <- DJ_df %>%
  filter(Stock_Average>5000)

plot2 <- ggplot(
  data = DJ_df2,
  mapping = aes(x = Date , y = Stock_Average)
) +
  geom_point() + # Line plot
  scale_x_date(date_breaks = "1 day", date_labels = "%Y-%m-%d") + # Format x-axis dates
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + # Rotate x-axis labels for better readability
  scale_x_date(limits = as.Date(c("1995-11-21", "2012-12-32"))) 

plot2

DJ_df3 <- DJ_df %>%
  filter(Stock_Average>10000)

plot3 <- ggplot(
  data = DJ_df3,
  mapping = aes(x = Date , y = Stock_Average)
) +
  geom_point() + # Line plot
  scale_x_date(date_breaks = "1 day", date_labels = "%Y-%m-%d") + # Format x-axis dates
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + # Rotate x-axis labels for better readability
  scale_x_date(limits = as.Date(c("1999-03-29", "2012-12-31"))) 

plot3
  





