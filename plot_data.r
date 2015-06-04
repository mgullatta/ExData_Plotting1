full_data <-read.csv2("household_power_consumption.txt", header = TRUE, as.is = TRUE)
strip_time <- strptime(paste(full_data$Date, full_data$Time), "%d/%m/%Y %H:%M:%S")
full_data$time <- strip_time
full_data$Date <- as.Date(full_data$Date, "%d/%m/%Y")
#subset data for 1/2/2007 to 2/2/07
plot_data <- full_data[full_data$Date >= as.Date("01/02/2007", "%d/%m/%Y") & full_data$Date <= as.Date("02/02/2007","%d/%m/%Y"),]
