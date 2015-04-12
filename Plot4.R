#Plot4.R
#Add plot 2 and 3 from above as first two plots. Set parameters to mfcol to go vertically
#open Graphics device
png(filename = "~/Desktop/RCoursera/ExData_Plotting1/plot4.png", width=480, height=480)

#set up for four plots staring in top left, to bottom left, to top right, to bottom right
par(mfcol = c(2, 2))  

#build the first plot in the top left corner
plot(GlobalActivePower, type = "l", xlab = "", 
     ylab = "Global Acive Power (kilowatts)", xaxt = "n")
axis(1, at=c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

#build the second plot in bottom left corner
plot(sub1, type = "l", xlab = "", ylab = "Energy sub metering", xaxt = "n")
axis(1, at=c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
lines(sub2, type = "l", col = "red")
lines(sub3, type = "l", col = "blue" )
legend("topright", c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       lty = c(1, 1, 1), lwd = c(1, 1), col = c('black', 'red', 'blue'), cex = 0.5)

#build voltage vector
Voltage <- as.numeric(levels(PowerDateSet$Voltage))[PowerDateSet$Voltage]

#build voltage plot
plot(Voltage, type = "l", xlab = "datetime", 
     ylab = "Voltage", xaxt = "n")
axis(1, at=c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

#create global active power vector
Global <- as.numeric(levels(PowerDateSet$Global_reactive_power))[PowerDateSet$Global_reactive_power]

#create global active power plot
plot(Global, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power", xaxt = "n")
axis(1, at=c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

#close graphics device
dev.off()