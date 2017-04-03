setwd("C:/Users/brcopela/OneDrive - Microsoft/R/Data Science Specialization/Exploratory Data Analysis/Week 1 Project/")

library(readr)
library(ggplot2)

df <- read_delim("household_power_consumption.txt", ";", escape_double = FALSE, trim_ws = TRUE)

df <- subset(df, (Date == "2/1/2007" | Date == "2/2/2007"))

dev.new("RStudioGD")

hist(df$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", freq = TRUE, xlim=c(0,6))

dev.copy(png, file = "Plot1.png")

dev.off()

