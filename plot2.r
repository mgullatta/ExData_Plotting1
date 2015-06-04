with(plot_data, plot(time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts"))
#copy to PNG
dev.copy(png, width = 480, height = 480, file = "plot2.png")
dev.off()