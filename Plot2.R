setwd("C:/Users/brcopela/OneDrive - Microsoft/R/Data Science Specialization/Exploratory Data Analysis/Week 1 Project/")

library(readr)
library(ggplot2)

df <- read_delim("household_power_consumption.txt", ";", escape_double = FALSE, trim_ws = TRUE)

df <- subset(df, (Date == "2/1/2007" | Date == "2/2/2007"))
df$Date <- mdy(df$Date)
df$Timestamp <- with(df, as.POSIXct(paste(Date, Time)))

dev.off()
dev.new("RStudioGD")

plot(df$Timestamp, df$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.copy(png, file = "Plot2.png")

dev.off()

