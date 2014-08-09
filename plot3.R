#load data and creates subset for the specific dates, convert date format
source("Load_the_data.R")

#output to file
png("plot3.png", width=480, height=480) 

#Create empty plot, then add lines
plot(datetime, power2$Sub_metering_1, xlab="", ylab="Energy sub metering", type = "n")
legend("topright", lty=1, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))
lines(datetime, power2$Sub_metering_1, col="black")
lines(datetime, power2$Sub_metering_2, col="red")
lines(datetime, power2$Sub_metering_3, col="blue")

#back to the console
dev.off()
