#Plot sub meter 1, 2, and 3 on same plot
#But first I need to subset sub1, 2 and 3

sub1 <- as.numeric(levels(PowerDateSet$Sub_metering_1))[PowerDateSet$Sub_metering_1]
sub2 <- as.numeric(levels(PowerDateSet$Sub_metering_2))[PowerDateSet$Sub_metering_2]
sub3 <- as.numeric(levels(PowerDateSet$Sub_metering_3))[PowerDateSet$Sub_metering_3]

#open graphics device
png(filename = "~/Desktop/RCoursera/ExData_Plotting1/plot3.png", width=480, height=480)

#make the plot
plot(sub1, type = "l", xlab = "", ylab = "Energy sub metering", xaxt = "n")

#label the axes, color appropriately, and add a legend
axis(1, at=c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
lines(sub2, type = "l", col = "red")
lines(sub3, type = "l", col = "blue" )
legend("topright", c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       lty = c(1, 1, 1), lwd = c(1, 1), col = c('black', 'red', 'blue'), cex = 0.5)

#close the graphics device
dev.off()  
