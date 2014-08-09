#load the data, subset for the specific dates, and convert date format
source("Load_the_data.R")

#output to png file
png("plot4.png", width=480, height=480)  

#create 2 x 2 frame, and create the 4 plots
par(mfrow=c(2,2))
plot(datetime, power2$Global_active_power, type="l", xlab="", ylab="Global_active_power")
plot(datetime, power2$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, power2$Sub_metering_1, xlab="", ylab="Energy sub metering", type = "n")
legend("topright", lty=1, bty="n", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))
lines(datetime, power2$Sub_metering_1, col="black")
lines(datetime, power2$Sub_metering_2, col="red")
lines(datetime, power2$Sub_metering_3, col="blue")
plot(datetime, power2$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

#back to the console
dev.off()
