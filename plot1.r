#Convert Global_active_power to number or face error messages. 
plot_data$Global_active_power <- as.numeric(plot_data$Global_active_power)
#Draw histogram to screen device for review
hist(plot_data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
#Draw plot to PNG format for saving
dev.copy(png, width = 480, height = 480, file = "plot1.png")
dev.off()
